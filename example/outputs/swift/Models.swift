// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let chinesecheckersV1FriendshipJsonschemaStrict = try ChinesecheckersV1FriendshipJsonschemaStrict(json)
//   let chinesecheckersV1GameJsonschemaStrict = try ChinesecheckersV1GameJsonschemaStrict(json)
//   let chinesecheckersV1GameMemberJsonschemaStrict = try ChinesecheckersV1GameMemberJsonschemaStrict(json)
//   let chinesecheckersV1GameRowJsonschemaStrict = try ChinesecheckersV1GameRowJsonschemaStrict(json)
//   let chinesecheckersV1GameSlotJsonschemaStrict = try ChinesecheckersV1GameSlotJsonschemaStrict(json)
//   let chinesecheckersV1UserJsonschemaStrict = try ChinesecheckersV1UserJsonschemaStrict(json)
//   let googleProtobufTimestampJsonschemaStrict = try GoogleProtobufTimestampJsonschemaStrict(json)

import Foundation

// MARK: - ChinesecheckersV1FriendshipJsonschemaStrict
public struct ChinesecheckersV1FriendshipJsonschemaStrict: Codable {
    public let id: String
    public let schema: String
    public let additionalProperties: Bool
    public let properties: ChinesecheckersV1FriendshipJsonschemaStrictProperties
    public let chinesecheckersV1FriendshipJsonschemaStrictRequired: [String]
    public let title, type: String

    public enum CodingKeys: String, CodingKey {
        case id
        case schema
        case additionalProperties, properties
        case chinesecheckersV1FriendshipJsonschemaStrictRequired
        case title, type
    }

    public init(id: String, schema: String, additionalProperties: Bool, properties: ChinesecheckersV1FriendshipJsonschemaStrictProperties, chinesecheckersV1FriendshipJsonschemaStrictRequired: [String], title: String, type: String) {
        self.id = id
        self.schema = schema
        self.additionalProperties = additionalProperties
        self.properties = properties
        self.chinesecheckersV1FriendshipJsonschemaStrictRequired = chinesecheckersV1FriendshipJsonschemaStrictRequired
        self.title = title
        self.type = type
    }
}

// MARK: ChinesecheckersV1FriendshipJsonschemaStrict convenience initializers and mutators

public extension ChinesecheckersV1FriendshipJsonschemaStrict {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1FriendshipJsonschemaStrict.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        schema: String? = nil,
        additionalProperties: Bool? = nil,
        properties: ChinesecheckersV1FriendshipJsonschemaStrictProperties? = nil,
        chinesecheckersV1FriendshipJsonschemaStrictRequired: [String]? = nil,
        title: String? = nil,
        type: String? = nil
    ) -> ChinesecheckersV1FriendshipJsonschemaStrict {
        return ChinesecheckersV1FriendshipJsonschemaStrict(
            id: id ?? self.id,
            schema: schema ?? self.schema,
            additionalProperties: additionalProperties ?? self.additionalProperties,
            properties: properties ?? self.properties,
            chinesecheckersV1FriendshipJsonschemaStrictRequired: chinesecheckersV1FriendshipJsonschemaStrictRequired ?? self.chinesecheckersV1FriendshipJsonschemaStrictRequired,
            title: title ?? self.title,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1FriendshipJsonschemaStrictProperties
public struct ChinesecheckersV1FriendshipJsonschemaStrictProperties: Codable {
    public let acceptedDate: AcceptedDate
    public let initiator: Initiator
    public let requestedDate: AcceptedDate
    public let status: Status
    public let uid1, uid2: Initiator

    public init(acceptedDate: AcceptedDate, initiator: Initiator, requestedDate: AcceptedDate, status: Status, uid1: Initiator, uid2: Initiator) {
        self.acceptedDate = acceptedDate
        self.initiator = initiator
        self.requestedDate = requestedDate
        self.status = status
        self.uid1 = uid1
        self.uid2 = uid2
    }
}

// MARK: ChinesecheckersV1FriendshipJsonschemaStrictProperties convenience initializers and mutators

public extension ChinesecheckersV1FriendshipJsonschemaStrictProperties {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1FriendshipJsonschemaStrictProperties.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        acceptedDate: AcceptedDate? = nil,
        initiator: Initiator? = nil,
        requestedDate: AcceptedDate? = nil,
        status: Status? = nil,
        uid1: Initiator? = nil,
        uid2: Initiator? = nil
    ) -> ChinesecheckersV1FriendshipJsonschemaStrictProperties {
        return ChinesecheckersV1FriendshipJsonschemaStrictProperties(
            acceptedDate: acceptedDate ?? self.acceptedDate,
            initiator: initiator ?? self.initiator,
            requestedDate: requestedDate ?? self.requestedDate,
            status: status ?? self.status,
            uid1: uid1 ?? self.uid1,
            uid2: uid2 ?? self.uid2
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - AcceptedDate
public struct AcceptedDate: Codable {
    public let ref: String

    public enum CodingKeys: String, CodingKey {
        case ref
    }

    public init(ref: String) {
        self.ref = ref
    }
}

// MARK: AcceptedDate convenience initializers and mutators

public extension AcceptedDate {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AcceptedDate.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        ref: String? = nil
    ) -> AcceptedDate {
        return AcceptedDate(
            ref: ref ?? self.ref
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Initiator
public struct Initiator: Codable {
    public let type: TypeEnum

    public init(type: TypeEnum) {
        self.type = type
    }
}

// MARK: Initiator convenience initializers and mutators

public extension Initiator {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Initiator.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: TypeEnum? = nil
    ) -> Initiator {
        return Initiator(
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public enum TypeEnum: String, Codable {
    case string = "string"
}

// MARK: - Status
public struct Status: Codable {
    public let statusEnum: [String]
    public let title: String
    public let type: TypeEnum

    public enum CodingKeys: String, CodingKey {
        case statusEnum
        case title, type
    }

    public init(statusEnum: [String], title: String, type: TypeEnum) {
        self.statusEnum = statusEnum
        self.title = title
        self.type = type
    }
}

// MARK: Status convenience initializers and mutators

public extension Status {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Status.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        statusEnum: [String]? = nil,
        title: String? = nil,
        type: TypeEnum? = nil
    ) -> Status {
        return Status(
            statusEnum: statusEnum ?? self.statusEnum,
            title: title ?? self.title,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1GameJsonschemaStrict
public struct ChinesecheckersV1GameJsonschemaStrict: Codable {
    public let id: String
    public let schema: String
    public let additionalProperties: Bool
    public let properties: ChinesecheckersV1GameJsonschemaStrictProperties
    public let chinesecheckersV1GameJsonschemaStrictRequired: [String]
    public let title, type: String

    public enum CodingKeys: String, CodingKey {
        case id
        case schema
        case additionalProperties, properties
        case chinesecheckersV1GameJsonschemaStrictRequired
        case title, type
    }

    public init(id: String, schema: String, additionalProperties: Bool, properties: ChinesecheckersV1GameJsonschemaStrictProperties, chinesecheckersV1GameJsonschemaStrictRequired: [String], title: String, type: String) {
        self.id = id
        self.schema = schema
        self.additionalProperties = additionalProperties
        self.properties = properties
        self.chinesecheckersV1GameJsonschemaStrictRequired = chinesecheckersV1GameJsonschemaStrictRequired
        self.title = title
        self.type = type
    }
}

// MARK: ChinesecheckersV1GameJsonschemaStrict convenience initializers and mutators

public extension ChinesecheckersV1GameJsonschemaStrict {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1GameJsonschemaStrict.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        schema: String? = nil,
        additionalProperties: Bool? = nil,
        properties: ChinesecheckersV1GameJsonschemaStrictProperties? = nil,
        chinesecheckersV1GameJsonschemaStrictRequired: [String]? = nil,
        title: String? = nil,
        type: String? = nil
    ) -> ChinesecheckersV1GameJsonschemaStrict {
        return ChinesecheckersV1GameJsonschemaStrict(
            id: id ?? self.id,
            schema: schema ?? self.schema,
            additionalProperties: additionalProperties ?? self.additionalProperties,
            properties: properties ?? self.properties,
            chinesecheckersV1GameJsonschemaStrictRequired: chinesecheckersV1GameJsonschemaStrictRequired ?? self.chinesecheckersV1GameJsonschemaStrictRequired,
            title: title ?? self.title,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1GameJsonschemaStrictProperties
public struct ChinesecheckersV1GameJsonschemaStrictProperties: Codable {
    public let board: Board
    public let createdDate: AcceptedDate
    public let currentPlayer: CurrentPlayer
    public let id: Initiator
    public let players: Players
    public let updatedDate: AcceptedDate

    public init(board: Board, createdDate: AcceptedDate, currentPlayer: CurrentPlayer, id: Initiator, players: Players, updatedDate: AcceptedDate) {
        self.board = board
        self.createdDate = createdDate
        self.currentPlayer = currentPlayer
        self.id = id
        self.players = players
        self.updatedDate = updatedDate
    }
}

// MARK: ChinesecheckersV1GameJsonschemaStrictProperties convenience initializers and mutators

public extension ChinesecheckersV1GameJsonschemaStrictProperties {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1GameJsonschemaStrictProperties.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        board: Board? = nil,
        createdDate: AcceptedDate? = nil,
        currentPlayer: CurrentPlayer? = nil,
        id: Initiator? = nil,
        players: Players? = nil,
        updatedDate: AcceptedDate? = nil
    ) -> ChinesecheckersV1GameJsonschemaStrictProperties {
        return ChinesecheckersV1GameJsonschemaStrictProperties(
            board: board ?? self.board,
            createdDate: createdDate ?? self.createdDate,
            currentPlayer: currentPlayer ?? self.currentPlayer,
            id: id ?? self.id,
            players: players ?? self.players,
            updatedDate: updatedDate ?? self.updatedDate
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Board
public struct Board: Codable {
    public let items: AcceptedDate
    public let type: String

    public init(items: AcceptedDate, type: String) {
        self.items = items
        self.type = type
    }
}

// MARK: Board convenience initializers and mutators

public extension Board {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Board.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        items: AcceptedDate? = nil,
        type: String? = nil
    ) -> Board {
        return Board(
            items: items ?? self.items,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - CurrentPlayer
public struct CurrentPlayer: Codable {
    public let maximum, minimum: Int
    public let type: String

    public init(maximum: Int, minimum: Int, type: String) {
        self.maximum = maximum
        self.minimum = minimum
        self.type = type
    }
}

// MARK: CurrentPlayer convenience initializers and mutators

public extension CurrentPlayer {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CurrentPlayer.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        maximum: Int? = nil,
        minimum: Int? = nil,
        type: String? = nil
    ) -> CurrentPlayer {
        return CurrentPlayer(
            maximum: maximum ?? self.maximum,
            minimum: minimum ?? self.minimum,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Players
public struct Players: Codable {
    public let items: Initiator
    public let type: String

    public init(items: Initiator, type: String) {
        self.items = items
        self.type = type
    }
}

// MARK: Players convenience initializers and mutators

public extension Players {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Players.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        items: Initiator? = nil,
        type: String? = nil
    ) -> Players {
        return Players(
            items: items ?? self.items,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1GameMemberJsonschemaStrict
public struct ChinesecheckersV1GameMemberJsonschemaStrict: Codable {
    public let id: String
    public let schema: String
    public let additionalProperties: Bool
    public let properties: ChinesecheckersV1GameMemberJsonschemaStrictProperties
    public let chinesecheckersV1GameMemberJsonschemaStrictRequired: [String]
    public let title, type: String

    public enum CodingKeys: String, CodingKey {
        case id
        case schema
        case additionalProperties, properties
        case chinesecheckersV1GameMemberJsonschemaStrictRequired
        case title, type
    }

    public init(id: String, schema: String, additionalProperties: Bool, properties: ChinesecheckersV1GameMemberJsonschemaStrictProperties, chinesecheckersV1GameMemberJsonschemaStrictRequired: [String], title: String, type: String) {
        self.id = id
        self.schema = schema
        self.additionalProperties = additionalProperties
        self.properties = properties
        self.chinesecheckersV1GameMemberJsonschemaStrictRequired = chinesecheckersV1GameMemberJsonschemaStrictRequired
        self.title = title
        self.type = type
    }
}

// MARK: ChinesecheckersV1GameMemberJsonschemaStrict convenience initializers and mutators

public extension ChinesecheckersV1GameMemberJsonschemaStrict {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1GameMemberJsonschemaStrict.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        schema: String? = nil,
        additionalProperties: Bool? = nil,
        properties: ChinesecheckersV1GameMemberJsonschemaStrictProperties? = nil,
        chinesecheckersV1GameMemberJsonschemaStrictRequired: [String]? = nil,
        title: String? = nil,
        type: String? = nil
    ) -> ChinesecheckersV1GameMemberJsonschemaStrict {
        return ChinesecheckersV1GameMemberJsonschemaStrict(
            id: id ?? self.id,
            schema: schema ?? self.schema,
            additionalProperties: additionalProperties ?? self.additionalProperties,
            properties: properties ?? self.properties,
            chinesecheckersV1GameMemberJsonschemaStrictRequired: chinesecheckersV1GameMemberJsonschemaStrictRequired ?? self.chinesecheckersV1GameMemberJsonschemaStrictRequired,
            title: title ?? self.title,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1GameMemberJsonschemaStrictProperties
public struct ChinesecheckersV1GameMemberJsonschemaStrictProperties: Codable {
    public let gameID, userID: Initiator

    public enum CodingKeys: String, CodingKey {
        case gameID
        case userID
    }

    public init(gameID: Initiator, userID: Initiator) {
        self.gameID = gameID
        self.userID = userID
    }
}

// MARK: ChinesecheckersV1GameMemberJsonschemaStrictProperties convenience initializers and mutators

public extension ChinesecheckersV1GameMemberJsonschemaStrictProperties {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1GameMemberJsonschemaStrictProperties.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        gameID: Initiator? = nil,
        userID: Initiator? = nil
    ) -> ChinesecheckersV1GameMemberJsonschemaStrictProperties {
        return ChinesecheckersV1GameMemberJsonschemaStrictProperties(
            gameID: gameID ?? self.gameID,
            userID: userID ?? self.userID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1GameRowJsonschemaStrict
public struct ChinesecheckersV1GameRowJsonschemaStrict: Codable {
    public let id: String
    public let schema: String
    public let additionalProperties: Bool
    public let properties: ChinesecheckersV1GameRowJsonschemaStrictProperties
    public let chinesecheckersV1GameRowJsonschemaStrictRequired: [String]
    public let title, type: String

    public enum CodingKeys: String, CodingKey {
        case id
        case schema
        case additionalProperties, properties
        case chinesecheckersV1GameRowJsonschemaStrictRequired
        case title, type
    }

    public init(id: String, schema: String, additionalProperties: Bool, properties: ChinesecheckersV1GameRowJsonschemaStrictProperties, chinesecheckersV1GameRowJsonschemaStrictRequired: [String], title: String, type: String) {
        self.id = id
        self.schema = schema
        self.additionalProperties = additionalProperties
        self.properties = properties
        self.chinesecheckersV1GameRowJsonschemaStrictRequired = chinesecheckersV1GameRowJsonschemaStrictRequired
        self.title = title
        self.type = type
    }
}

// MARK: ChinesecheckersV1GameRowJsonschemaStrict convenience initializers and mutators

public extension ChinesecheckersV1GameRowJsonschemaStrict {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1GameRowJsonschemaStrict.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        schema: String? = nil,
        additionalProperties: Bool? = nil,
        properties: ChinesecheckersV1GameRowJsonschemaStrictProperties? = nil,
        chinesecheckersV1GameRowJsonschemaStrictRequired: [String]? = nil,
        title: String? = nil,
        type: String? = nil
    ) -> ChinesecheckersV1GameRowJsonschemaStrict {
        return ChinesecheckersV1GameRowJsonschemaStrict(
            id: id ?? self.id,
            schema: schema ?? self.schema,
            additionalProperties: additionalProperties ?? self.additionalProperties,
            properties: properties ?? self.properties,
            chinesecheckersV1GameRowJsonschemaStrictRequired: chinesecheckersV1GameRowJsonschemaStrictRequired ?? self.chinesecheckersV1GameRowJsonschemaStrictRequired,
            title: title ?? self.title,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1GameRowJsonschemaStrictProperties
public struct ChinesecheckersV1GameRowJsonschemaStrictProperties: Codable {
    public let slots: Board

    public init(slots: Board) {
        self.slots = slots
    }
}

// MARK: ChinesecheckersV1GameRowJsonschemaStrictProperties convenience initializers and mutators

public extension ChinesecheckersV1GameRowJsonschemaStrictProperties {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1GameRowJsonschemaStrictProperties.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        slots: Board? = nil
    ) -> ChinesecheckersV1GameRowJsonschemaStrictProperties {
        return ChinesecheckersV1GameRowJsonschemaStrictProperties(
            slots: slots ?? self.slots
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1GameSlotJsonschemaStrict
public struct ChinesecheckersV1GameSlotJsonschemaStrict: Codable {
    public let id: String
    public let schema: String
    public let additionalProperties: Bool
    public let properties: ChinesecheckersV1GameSlotJsonschemaStrictProperties
    public let title, type: String

    public enum CodingKeys: String, CodingKey {
        case id
        case schema
        case additionalProperties, properties, title, type
    }

    public init(id: String, schema: String, additionalProperties: Bool, properties: ChinesecheckersV1GameSlotJsonschemaStrictProperties, title: String, type: String) {
        self.id = id
        self.schema = schema
        self.additionalProperties = additionalProperties
        self.properties = properties
        self.title = title
        self.type = type
    }
}

// MARK: ChinesecheckersV1GameSlotJsonschemaStrict convenience initializers and mutators

public extension ChinesecheckersV1GameSlotJsonschemaStrict {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1GameSlotJsonschemaStrict.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        schema: String? = nil,
        additionalProperties: Bool? = nil,
        properties: ChinesecheckersV1GameSlotJsonschemaStrictProperties? = nil,
        title: String? = nil,
        type: String? = nil
    ) -> ChinesecheckersV1GameSlotJsonschemaStrict {
        return ChinesecheckersV1GameSlotJsonschemaStrict(
            id: id ?? self.id,
            schema: schema ?? self.schema,
            additionalProperties: additionalProperties ?? self.additionalProperties,
            properties: properties ?? self.properties,
            title: title ?? self.title,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1GameSlotJsonschemaStrictProperties
public struct ChinesecheckersV1GameSlotJsonschemaStrictProperties: Codable {
    public let user: Initiator

    public init(user: Initiator) {
        self.user = user
    }
}

// MARK: ChinesecheckersV1GameSlotJsonschemaStrictProperties convenience initializers and mutators

public extension ChinesecheckersV1GameSlotJsonschemaStrictProperties {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1GameSlotJsonschemaStrictProperties.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        user: Initiator? = nil
    ) -> ChinesecheckersV1GameSlotJsonschemaStrictProperties {
        return ChinesecheckersV1GameSlotJsonschemaStrictProperties(
            user: user ?? self.user
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1UserJsonschemaStrict
public struct ChinesecheckersV1UserJsonschemaStrict: Codable {
    public let id: String
    public let schema: String
    public let additionalProperties: Bool
    public let properties: ChinesecheckersV1UserJsonschemaStrictProperties
    public let chinesecheckersV1UserJsonschemaStrictRequired: [String]
    public let title, type: String

    public enum CodingKeys: String, CodingKey {
        case id
        case schema
        case additionalProperties, properties
        case chinesecheckersV1UserJsonschemaStrictRequired
        case title, type
    }

    public init(id: String, schema: String, additionalProperties: Bool, properties: ChinesecheckersV1UserJsonschemaStrictProperties, chinesecheckersV1UserJsonschemaStrictRequired: [String], title: String, type: String) {
        self.id = id
        self.schema = schema
        self.additionalProperties = additionalProperties
        self.properties = properties
        self.chinesecheckersV1UserJsonschemaStrictRequired = chinesecheckersV1UserJsonschemaStrictRequired
        self.title = title
        self.type = type
    }
}

// MARK: ChinesecheckersV1UserJsonschemaStrict convenience initializers and mutators

public extension ChinesecheckersV1UserJsonschemaStrict {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1UserJsonschemaStrict.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        schema: String? = nil,
        additionalProperties: Bool? = nil,
        properties: ChinesecheckersV1UserJsonschemaStrictProperties? = nil,
        chinesecheckersV1UserJsonschemaStrictRequired: [String]? = nil,
        title: String? = nil,
        type: String? = nil
    ) -> ChinesecheckersV1UserJsonschemaStrict {
        return ChinesecheckersV1UserJsonschemaStrict(
            id: id ?? self.id,
            schema: schema ?? self.schema,
            additionalProperties: additionalProperties ?? self.additionalProperties,
            properties: properties ?? self.properties,
            chinesecheckersV1UserJsonschemaStrictRequired: chinesecheckersV1UserJsonschemaStrictRequired ?? self.chinesecheckersV1UserJsonschemaStrictRequired,
            title: title ?? self.title,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ChinesecheckersV1UserJsonschemaStrictProperties
public struct ChinesecheckersV1UserJsonschemaStrictProperties: Codable {
    public let createdDate: AcceptedDate
    public let email, id, name: Initiator
    public let updatedDate: AcceptedDate

    public init(createdDate: AcceptedDate, email: Initiator, id: Initiator, name: Initiator, updatedDate: AcceptedDate) {
        self.createdDate = createdDate
        self.email = email
        self.id = id
        self.name = name
        self.updatedDate = updatedDate
    }
}

// MARK: ChinesecheckersV1UserJsonschemaStrictProperties convenience initializers and mutators

public extension ChinesecheckersV1UserJsonschemaStrictProperties {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ChinesecheckersV1UserJsonschemaStrictProperties.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        createdDate: AcceptedDate? = nil,
        email: Initiator? = nil,
        id: Initiator? = nil,
        name: Initiator? = nil,
        updatedDate: AcceptedDate? = nil
    ) -> ChinesecheckersV1UserJsonschemaStrictProperties {
        return ChinesecheckersV1UserJsonschemaStrictProperties(
            createdDate: createdDate ?? self.createdDate,
            email: email ?? self.email,
            id: id ?? self.id,
            name: name ?? self.name,
            updatedDate: updatedDate ?? self.updatedDate
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GoogleProtobufTimestampJsonschemaStrict
public struct GoogleProtobufTimestampJsonschemaStrict: Codable {
    public let id: String
    public let schema: String
    public let format, title: String
    public let type: TypeEnum

    public enum CodingKeys: String, CodingKey {
        case id
        case schema
        case format, title, type
    }

    public init(id: String, schema: String, format: String, title: String, type: TypeEnum) {
        self.id = id
        self.schema = schema
        self.format = format
        self.title = title
        self.type = type
    }
}

// MARK: GoogleProtobufTimestampJsonschemaStrict convenience initializers and mutators

public extension GoogleProtobufTimestampJsonschemaStrict {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GoogleProtobufTimestampJsonschemaStrict.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        schema: String? = nil,
        format: String? = nil,
        title: String? = nil,
        type: TypeEnum? = nil
    ) -> GoogleProtobufTimestampJsonschemaStrict {
        return GoogleProtobufTimestampJsonschemaStrict(
            id: id ?? self.id,
            schema: schema ?? self.schema,
            format: format ?? self.format,
            title: title ?? self.title,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
