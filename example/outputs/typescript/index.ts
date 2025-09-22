// To parse this data:
//
//   import { Convert, ChinesecheckersV1FriendshipJsonschemaStrict, ChinesecheckersV1GameJsonschemaStrict, ChinesecheckersV1GameMemberJsonschemaStrict, ChinesecheckersV1GameRowJsonschemaStrict, ChinesecheckersV1GameSlotJsonschemaStrict, ChinesecheckersV1UserJsonschemaStrict, GoogleProtobufTimestampJsonschemaStrict } from "./file";
//
//   const chinesecheckersV1FriendshipJsonschemaStrict = Convert.toChinesecheckersV1FriendshipJsonschemaStrict(json);
//   const chinesecheckersV1GameJsonschemaStrict = Convert.toChinesecheckersV1GameJsonschemaStrict(json);
//   const chinesecheckersV1GameMemberJsonschemaStrict = Convert.toChinesecheckersV1GameMemberJsonschemaStrict(json);
//   const chinesecheckersV1GameRowJsonschemaStrict = Convert.toChinesecheckersV1GameRowJsonschemaStrict(json);
//   const chinesecheckersV1GameSlotJsonschemaStrict = Convert.toChinesecheckersV1GameSlotJsonschemaStrict(json);
//   const chinesecheckersV1UserJsonschemaStrict = Convert.toChinesecheckersV1UserJsonschemaStrict(json);
//   const googleProtobufTimestampJsonschemaStrict = Convert.toGoogleProtobufTimestampJsonschemaStrict(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

export interface ChinesecheckersV1FriendshipJsonschemaStrict {
    $id:                  string;
    $schema:              string;
    additionalProperties: boolean;
    properties:           ChinesecheckersV1FriendshipJsonschemaStrictProperties;
    required:             string[];
    title:                string;
    type:                 string;
}

export interface ChinesecheckersV1FriendshipJsonschemaStrictProperties {
    acceptedDate:  AcceptedDate;
    initiator:     Initiator;
    requestedDate: AcceptedDate;
    status:        Status;
    uid1:          Initiator;
    uid2:          Initiator;
}

export interface AcceptedDate {
    $ref: string;
}

export interface Initiator {
    type: Type;
}

export enum Type {
    String = "string",
}

export interface Status {
    enum:  string[];
    title: string;
    type:  Type;
}

export interface ChinesecheckersV1GameJsonschemaStrict {
    $id:                  string;
    $schema:              string;
    additionalProperties: boolean;
    properties:           ChinesecheckersV1GameJsonschemaStrictProperties;
    required:             string[];
    title:                string;
    type:                 string;
}

export interface ChinesecheckersV1GameJsonschemaStrictProperties {
    board:         Board;
    createdDate:   AcceptedDate;
    currentPlayer: CurrentPlayer;
    id:            Initiator;
    players:       Players;
    updatedDate:   AcceptedDate;
}

export interface Board {
    items: AcceptedDate;
    type:  string;
}

export interface CurrentPlayer {
    maximum: number;
    minimum: number;
    type:    string;
}

export interface Players {
    items: Initiator;
    type:  string;
}

export interface ChinesecheckersV1GameMemberJsonschemaStrict {
    $id:                  string;
    $schema:              string;
    additionalProperties: boolean;
    properties:           ChinesecheckersV1GameMemberJsonschemaStrictProperties;
    required:             string[];
    title:                string;
    type:                 string;
}

export interface ChinesecheckersV1GameMemberJsonschemaStrictProperties {
    gameId: Initiator;
    userId: Initiator;
}

export interface ChinesecheckersV1GameRowJsonschemaStrict {
    $id:                  string;
    $schema:              string;
    additionalProperties: boolean;
    properties:           ChinesecheckersV1GameRowJsonschemaStrictProperties;
    required:             string[];
    title:                string;
    type:                 string;
}

export interface ChinesecheckersV1GameRowJsonschemaStrictProperties {
    slots: Board;
}

export interface ChinesecheckersV1GameSlotJsonschemaStrict {
    $id:                  string;
    $schema:              string;
    additionalProperties: boolean;
    properties:           ChinesecheckersV1GameSlotJsonschemaStrictProperties;
    title:                string;
    type:                 string;
}

export interface ChinesecheckersV1GameSlotJsonschemaStrictProperties {
    user: Initiator;
}

export interface ChinesecheckersV1UserJsonschemaStrict {
    $id:                  string;
    $schema:              string;
    additionalProperties: boolean;
    properties:           ChinesecheckersV1UserJsonschemaStrictProperties;
    required:             string[];
    title:                string;
    type:                 string;
}

export interface ChinesecheckersV1UserJsonschemaStrictProperties {
    createdDate: AcceptedDate;
    email:       Initiator;
    id:          Initiator;
    name:        Initiator;
    updatedDate: AcceptedDate;
}

export interface GoogleProtobufTimestampJsonschemaStrict {
    $id:     string;
    $schema: string;
    format:  string;
    title:   string;
    type:    Type;
}

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
export class Convert {
    public static toChinesecheckersV1FriendshipJsonschemaStrict(json: string): ChinesecheckersV1FriendshipJsonschemaStrict {
        return cast(JSON.parse(json), r("ChinesecheckersV1FriendshipJsonschemaStrict"));
    }

    public static chinesecheckersV1FriendshipJsonschemaStrictToJson(value: ChinesecheckersV1FriendshipJsonschemaStrict): string {
        return JSON.stringify(uncast(value, r("ChinesecheckersV1FriendshipJsonschemaStrict")), null, 2);
    }

    public static toChinesecheckersV1GameJsonschemaStrict(json: string): ChinesecheckersV1GameJsonschemaStrict {
        return cast(JSON.parse(json), r("ChinesecheckersV1GameJsonschemaStrict"));
    }

    public static chinesecheckersV1GameJsonschemaStrictToJson(value: ChinesecheckersV1GameJsonschemaStrict): string {
        return JSON.stringify(uncast(value, r("ChinesecheckersV1GameJsonschemaStrict")), null, 2);
    }

    public static toChinesecheckersV1GameMemberJsonschemaStrict(json: string): ChinesecheckersV1GameMemberJsonschemaStrict {
        return cast(JSON.parse(json), r("ChinesecheckersV1GameMemberJsonschemaStrict"));
    }

    public static chinesecheckersV1GameMemberJsonschemaStrictToJson(value: ChinesecheckersV1GameMemberJsonschemaStrict): string {
        return JSON.stringify(uncast(value, r("ChinesecheckersV1GameMemberJsonschemaStrict")), null, 2);
    }

    public static toChinesecheckersV1GameRowJsonschemaStrict(json: string): ChinesecheckersV1GameRowJsonschemaStrict {
        return cast(JSON.parse(json), r("ChinesecheckersV1GameRowJsonschemaStrict"));
    }

    public static chinesecheckersV1GameRowJsonschemaStrictToJson(value: ChinesecheckersV1GameRowJsonschemaStrict): string {
        return JSON.stringify(uncast(value, r("ChinesecheckersV1GameRowJsonschemaStrict")), null, 2);
    }

    public static toChinesecheckersV1GameSlotJsonschemaStrict(json: string): ChinesecheckersV1GameSlotJsonschemaStrict {
        return cast(JSON.parse(json), r("ChinesecheckersV1GameSlotJsonschemaStrict"));
    }

    public static chinesecheckersV1GameSlotJsonschemaStrictToJson(value: ChinesecheckersV1GameSlotJsonschemaStrict): string {
        return JSON.stringify(uncast(value, r("ChinesecheckersV1GameSlotJsonschemaStrict")), null, 2);
    }

    public static toChinesecheckersV1UserJsonschemaStrict(json: string): ChinesecheckersV1UserJsonschemaStrict {
        return cast(JSON.parse(json), r("ChinesecheckersV1UserJsonschemaStrict"));
    }

    public static chinesecheckersV1UserJsonschemaStrictToJson(value: ChinesecheckersV1UserJsonschemaStrict): string {
        return JSON.stringify(uncast(value, r("ChinesecheckersV1UserJsonschemaStrict")), null, 2);
    }

    public static toGoogleProtobufTimestampJsonschemaStrict(json: string): GoogleProtobufTimestampJsonschemaStrict {
        return cast(JSON.parse(json), r("GoogleProtobufTimestampJsonschemaStrict"));
    }

    public static googleProtobufTimestampJsonschemaStrictToJson(value: GoogleProtobufTimestampJsonschemaStrict): string {
        return JSON.stringify(uncast(value, r("GoogleProtobufTimestampJsonschemaStrict")), null, 2);
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
    "ChinesecheckersV1FriendshipJsonschemaStrict": o([
        { json: "$id", js: "$id", typ: "" },
        { json: "$schema", js: "$schema", typ: "" },
        { json: "additionalProperties", js: "additionalProperties", typ: true },
        { json: "properties", js: "properties", typ: r("ChinesecheckersV1FriendshipJsonschemaStrictProperties") },
        { json: "required", js: "required", typ: a("") },
        { json: "title", js: "title", typ: "" },
        { json: "type", js: "type", typ: "" },
    ], false),
    "ChinesecheckersV1FriendshipJsonschemaStrictProperties": o([
        { json: "acceptedDate", js: "acceptedDate", typ: r("AcceptedDate") },
        { json: "initiator", js: "initiator", typ: r("Initiator") },
        { json: "requestedDate", js: "requestedDate", typ: r("AcceptedDate") },
        { json: "status", js: "status", typ: r("Status") },
        { json: "uid1", js: "uid1", typ: r("Initiator") },
        { json: "uid2", js: "uid2", typ: r("Initiator") },
    ], false),
    "AcceptedDate": o([
        { json: "$ref", js: "$ref", typ: "" },
    ], false),
    "Initiator": o([
        { json: "type", js: "type", typ: r("Type") },
    ], false),
    "Status": o([
        { json: "enum", js: "enum", typ: a("") },
        { json: "title", js: "title", typ: "" },
        { json: "type", js: "type", typ: r("Type") },
    ], false),
    "ChinesecheckersV1GameJsonschemaStrict": o([
        { json: "$id", js: "$id", typ: "" },
        { json: "$schema", js: "$schema", typ: "" },
        { json: "additionalProperties", js: "additionalProperties", typ: true },
        { json: "properties", js: "properties", typ: r("ChinesecheckersV1GameJsonschemaStrictProperties") },
        { json: "required", js: "required", typ: a("") },
        { json: "title", js: "title", typ: "" },
        { json: "type", js: "type", typ: "" },
    ], false),
    "ChinesecheckersV1GameJsonschemaStrictProperties": o([
        { json: "board", js: "board", typ: r("Board") },
        { json: "createdDate", js: "createdDate", typ: r("AcceptedDate") },
        { json: "currentPlayer", js: "currentPlayer", typ: r("CurrentPlayer") },
        { json: "id", js: "id", typ: r("Initiator") },
        { json: "players", js: "players", typ: r("Players") },
        { json: "updatedDate", js: "updatedDate", typ: r("AcceptedDate") },
    ], false),
    "Board": o([
        { json: "items", js: "items", typ: r("AcceptedDate") },
        { json: "type", js: "type", typ: "" },
    ], false),
    "CurrentPlayer": o([
        { json: "maximum", js: "maximum", typ: 0 },
        { json: "minimum", js: "minimum", typ: 0 },
        { json: "type", js: "type", typ: "" },
    ], false),
    "Players": o([
        { json: "items", js: "items", typ: r("Initiator") },
        { json: "type", js: "type", typ: "" },
    ], false),
    "ChinesecheckersV1GameMemberJsonschemaStrict": o([
        { json: "$id", js: "$id", typ: "" },
        { json: "$schema", js: "$schema", typ: "" },
        { json: "additionalProperties", js: "additionalProperties", typ: true },
        { json: "properties", js: "properties", typ: r("ChinesecheckersV1GameMemberJsonschemaStrictProperties") },
        { json: "required", js: "required", typ: a("") },
        { json: "title", js: "title", typ: "" },
        { json: "type", js: "type", typ: "" },
    ], false),
    "ChinesecheckersV1GameMemberJsonschemaStrictProperties": o([
        { json: "gameId", js: "gameId", typ: r("Initiator") },
        { json: "userId", js: "userId", typ: r("Initiator") },
    ], false),
    "ChinesecheckersV1GameRowJsonschemaStrict": o([
        { json: "$id", js: "$id", typ: "" },
        { json: "$schema", js: "$schema", typ: "" },
        { json: "additionalProperties", js: "additionalProperties", typ: true },
        { json: "properties", js: "properties", typ: r("ChinesecheckersV1GameRowJsonschemaStrictProperties") },
        { json: "required", js: "required", typ: a("") },
        { json: "title", js: "title", typ: "" },
        { json: "type", js: "type", typ: "" },
    ], false),
    "ChinesecheckersV1GameRowJsonschemaStrictProperties": o([
        { json: "slots", js: "slots", typ: r("Board") },
    ], false),
    "ChinesecheckersV1GameSlotJsonschemaStrict": o([
        { json: "$id", js: "$id", typ: "" },
        { json: "$schema", js: "$schema", typ: "" },
        { json: "additionalProperties", js: "additionalProperties", typ: true },
        { json: "properties", js: "properties", typ: r("ChinesecheckersV1GameSlotJsonschemaStrictProperties") },
        { json: "title", js: "title", typ: "" },
        { json: "type", js: "type", typ: "" },
    ], false),
    "ChinesecheckersV1GameSlotJsonschemaStrictProperties": o([
        { json: "user", js: "user", typ: r("Initiator") },
    ], false),
    "ChinesecheckersV1UserJsonschemaStrict": o([
        { json: "$id", js: "$id", typ: "" },
        { json: "$schema", js: "$schema", typ: "" },
        { json: "additionalProperties", js: "additionalProperties", typ: true },
        { json: "properties", js: "properties", typ: r("ChinesecheckersV1UserJsonschemaStrictProperties") },
        { json: "required", js: "required", typ: a("") },
        { json: "title", js: "title", typ: "" },
        { json: "type", js: "type", typ: "" },
    ], false),
    "ChinesecheckersV1UserJsonschemaStrictProperties": o([
        { json: "createdDate", js: "createdDate", typ: r("AcceptedDate") },
        { json: "email", js: "email", typ: r("Initiator") },
        { json: "id", js: "id", typ: r("Initiator") },
        { json: "name", js: "name", typ: r("Initiator") },
        { json: "updatedDate", js: "updatedDate", typ: r("AcceptedDate") },
    ], false),
    "GoogleProtobufTimestampJsonschemaStrict": o([
        { json: "$id", js: "$id", typ: "" },
        { json: "$schema", js: "$schema", typ: "" },
        { json: "format", js: "format", typ: "" },
        { json: "title", js: "title", typ: "" },
        { json: "type", js: "type", typ: r("Type") },
    ], false),
    "Type": [
        "string",
    ],
};
