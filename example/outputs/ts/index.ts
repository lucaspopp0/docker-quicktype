// To parse this data:
//
//   import { Convert, Friendship, Game, GameMember, GameRow, GameSlot, User } from "./file";
//
//   const friendship = Convert.toFriendship(json);
//   const game = Convert.toGame(json);
//   const gameMember = Convert.toGameMember(json);
//   const gameRow = Convert.toGameRow(json);
//   const gameSlot = Convert.toGameSlot(json);
//   const user = Convert.toUser(json);
//   const timestamp = Convert.toTimestamp(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

type Timestamp = Date;

export interface Friendship {
    acceptedDate?:  Date;
    initiator:      string;
    requestedDate?: Date;
    status:         FriendshipStatus;
    uid1:           string;
    uid2:           string;
}

export enum FriendshipStatus {
    FriendshipStatusAccepted = "FRIENDSHIP_STATUS_ACCEPTED",
    FriendshipStatusRejected = "FRIENDSHIP_STATUS_REJECTED",
    FriendshipStatusRequested = "FRIENDSHIP_STATUS_REQUESTED",
    FriendshipStatusUnspecified = "FRIENDSHIP_STATUS_UNSPECIFIED",
}

export interface Game {
    board?:        BoardElement[];
    createdDate?:  Date;
    currentPlayer: number;
    id:            string;
    players:       string[];
    updatedDate?:  Date;
}

export interface BoardElement {
    slots: SlotElement[];
}

export interface SlotElement {
    user?: string;
}

export interface GameMember {
    gameId: string;
    userId: string;
}

export interface GameRow {
    slots: SlotElement[];
}

export interface GameSlot {
    user?: string;
}

export interface User {
    createdDate?: Date;
    email:        string;
    id:           string;
    name:         string;
    updatedDate?: Date;
}

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
export class Convert {
    public static toFriendship(json: string): Friendship {
        return cast(JSON.parse(json), r("Friendship"));
    }

    public static friendshipToJson(value: Friendship): string {
        return JSON.stringify(uncast(value, r("Friendship")), null, 2);
    }

    public static toGame(json: string): Game {
        return cast(JSON.parse(json), r("Game"));
    }

    public static gameToJson(value: Game): string {
        return JSON.stringify(uncast(value, r("Game")), null, 2);
    }

    public static toGameMember(json: string): GameMember {
        return cast(JSON.parse(json), r("GameMember"));
    }

    public static gameMemberToJson(value: GameMember): string {
        return JSON.stringify(uncast(value, r("GameMember")), null, 2);
    }

    public static toGameRow(json: string): GameRow {
        return cast(JSON.parse(json), r("GameRow"));
    }

    public static gameRowToJson(value: GameRow): string {
        return JSON.stringify(uncast(value, r("GameRow")), null, 2);
    }

    public static toGameSlot(json: string): GameSlot {
        return cast(JSON.parse(json), r("GameSlot"));
    }

    public static gameSlotToJson(value: GameSlot): string {
        return JSON.stringify(uncast(value, r("GameSlot")), null, 2);
    }

    public static toUser(json: string): User {
        return cast(JSON.parse(json), r("User"));
    }

    public static userToJson(value: User): string {
        return JSON.stringify(uncast(value, r("User")), null, 2);
    }

    public static toTimestamp(json: string): Date {
        return cast(JSON.parse(json), Date);
    }

    public static timestampToJson(value: Date): string {
        return JSON.stringify(uncast(value, Date), null, 2);
    }
}

function invalidValue(typ: any, val: any, key: any, parent: any = ''): never {
    const prettyTyp = prettyTypeName(typ);
    const parentText = parent ? ` on ${parent}` : '';
    const keyText = key ? ` for key "${key}"` : '';
    throw Error(`Invalid value${keyText}${parentText}. Expected ${prettyTyp} but got ${JSON.stringify(val)}`);
}

function prettyTypeName(typ: any): string {
    if (Array.isArray(typ)) {
        if (typ.length === 2 && typ[0] === undefined) {
            return `an optional ${prettyTypeName(typ[1])}`;
        } else {
            return `one of [${typ.map(a => { return prettyTypeName(a); }).join(", ")}]`;
        }
    } else if (typeof typ === "object" && typ.literal !== undefined) {
        return typ.literal;
    } else {
        return typeof typ;
    }
}

function jsonToJSProps(typ: any): any {
    if (typ.jsonToJS === undefined) {
        const map: any = {};
        typ.props.forEach((p: any) => map[p.json] = { key: p.js, typ: p.typ });
        typ.jsonToJS = map;
    }
    return typ.jsonToJS;
}

function jsToJSONProps(typ: any): any {
    if (typ.jsToJSON === undefined) {
        const map: any = {};
        typ.props.forEach((p: any) => map[p.js] = { key: p.json, typ: p.typ });
        typ.jsToJSON = map;
    }
    return typ.jsToJSON;
}

function transform(val: any, typ: any, getProps: any, key: any = '', parent: any = ''): any {
    function transformPrimitive(typ: string, val: any): any {
        if (typeof typ === typeof val) return val;
        return invalidValue(typ, val, key, parent);
    }

    function transformUnion(typs: any[], val: any): any {
        // val must validate against one typ in typs
        const l = typs.length;
        for (let i = 0; i < l; i++) {
            const typ = typs[i];
            try {
                return transform(val, typ, getProps);
            } catch (_) {}
        }
        return invalidValue(typs, val, key, parent);
    }

    function transformEnum(cases: string[], val: any): any {
        if (cases.indexOf(val) !== -1) return val;
        return invalidValue(cases.map(a => { return l(a); }), val, key, parent);
    }

    function transformArray(typ: any, val: any): any {
        // val must be an array with no invalid elements
        if (!Array.isArray(val)) return invalidValue(l("array"), val, key, parent);
        return val.map(el => transform(el, typ, getProps));
    }

    function transformDate(val: any): any {
        if (val === null) {
            return null;
        }
        const d = new Date(val);
        if (isNaN(d.valueOf())) {
            return invalidValue(l("Date"), val, key, parent);
        }
        return d;
    }

    function transformObject(props: { [k: string]: any }, additional: any, val: any): any {
        if (val === null || typeof val !== "object" || Array.isArray(val)) {
            return invalidValue(l(ref || "object"), val, key, parent);
        }
        const result: any = {};
        Object.getOwnPropertyNames(props).forEach(key => {
            const prop = props[key];
            const v = Object.prototype.hasOwnProperty.call(val, key) ? val[key] : undefined;
            result[prop.key] = transform(v, prop.typ, getProps, key, ref);
        });
        Object.getOwnPropertyNames(val).forEach(key => {
            if (!Object.prototype.hasOwnProperty.call(props, key)) {
                result[key] = transform(val[key], additional, getProps, key, ref);
            }
        });
        return result;
    }

    if (typ === "any") return val;
    if (typ === null) {
        if (val === null) return val;
        return invalidValue(typ, val, key, parent);
    }
    if (typ === false) return invalidValue(typ, val, key, parent);
    let ref: any = undefined;
    while (typeof typ === "object" && typ.ref !== undefined) {
        ref = typ.ref;
        typ = typeMap[typ.ref];
    }
    if (Array.isArray(typ)) return transformEnum(typ, val);
    if (typeof typ === "object") {
        return typ.hasOwnProperty("unionMembers") ? transformUnion(typ.unionMembers, val)
            : typ.hasOwnProperty("arrayItems")    ? transformArray(typ.arrayItems, val)
            : typ.hasOwnProperty("props")         ? transformObject(getProps(typ), typ.additional, val)
            : invalidValue(typ, val, key, parent);
    }
    // Numbers can be parsed by Date but shouldn't be.
    if (typ === Date && typeof val !== "number") return transformDate(val);
    return transformPrimitive(typ, val);
}

function cast<T>(val: any, typ: any): T {
    return transform(val, typ, jsonToJSProps);
}

function uncast<T>(val: T, typ: any): any {
    return transform(val, typ, jsToJSONProps);
}

function l(typ: any) {
    return { literal: typ };
}

function a(typ: any) {
    return { arrayItems: typ };
}

function u(...typs: any[]) {
    return { unionMembers: typs };
}

function o(props: any[], additional: any) {
    return { props, additional };
}

function m(additional: any) {
    return { props: [], additional };
}

function r(name: string) {
    return { ref: name };
}

const typeMap: any = {
    "Friendship": o([
        { json: "acceptedDate", js: "acceptedDate", typ: u(undefined, Date) },
        { json: "initiator", js: "initiator", typ: "" },
        { json: "requestedDate", js: "requestedDate", typ: u(undefined, Date) },
        { json: "status", js: "status", typ: r("FriendshipStatus") },
        { json: "uid1", js: "uid1", typ: "" },
        { json: "uid2", js: "uid2", typ: "" },
    ], false),
    "Game": o([
        { json: "board", js: "board", typ: u(undefined, a(r("BoardElement"))) },
        { json: "createdDate", js: "createdDate", typ: u(undefined, Date) },
        { json: "currentPlayer", js: "currentPlayer", typ: 0 },
        { json: "id", js: "id", typ: "" },
        { json: "players", js: "players", typ: a("") },
        { json: "updatedDate", js: "updatedDate", typ: u(undefined, Date) },
    ], false),
    "BoardElement": o([
        { json: "slots", js: "slots", typ: a(r("SlotElement")) },
    ], false),
    "SlotElement": o([
        { json: "user", js: "user", typ: u(undefined, "") },
    ], false),
    "GameMember": o([
        { json: "gameId", js: "gameId", typ: "" },
        { json: "userId", js: "userId", typ: "" },
    ], false),
    "GameRow": o([
        { json: "slots", js: "slots", typ: a(r("SlotElement")) },
    ], false),
    "GameSlot": o([
        { json: "user", js: "user", typ: u(undefined, "") },
    ], false),
    "User": o([
        { json: "createdDate", js: "createdDate", typ: u(undefined, Date) },
        { json: "email", js: "email", typ: "" },
        { json: "id", js: "id", typ: "" },
        { json: "name", js: "name", typ: "" },
        { json: "updatedDate", js: "updatedDate", typ: u(undefined, Date) },
    ], false),
    "FriendshipStatus": [
        "FRIENDSHIP_STATUS_ACCEPTED",
        "FRIENDSHIP_STATUS_REJECTED",
        "FRIENDSHIP_STATUS_REQUESTED",
        "FRIENDSHIP_STATUS_UNSPECIFIED",
    ],
};
