// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let friendship = try Friendship(json)
//   let game = try Game(json)
//   let gameMember = try GameMember(json)
//   let gameRow = try GameRow(json)
//   let gameSlot = try GameSlot(json)
//   let user = try User(json)
//   let timestamp = try Timestamp(json)

import Foundation

// MARK: - Friendship
public struct Friendship: Codable {
    public let acceptedDate: Date?
    public let initiator: String
    public let requestedDate: Date?
    public let status: FriendshipStatus
    public let uid1, uid2: String

    public init(acceptedDate: Date?, initiator: String, requestedDate: Date?, status: FriendshipStatus, uid1: String, uid2: String) {
        self.acceptedDate = acceptedDate
        self.initiator = initiator
        self.requestedDate = requestedDate
        self.status = status
        self.uid1 = uid1
        self.uid2 = uid2
    }
}

// MARK: Friendship convenience initializers and mutators

public extension Friendship {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Friendship.self, from: data)
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
        acceptedDate: Date?? = nil,
        initiator: String? = nil,
        requestedDate: Date?? = nil,
        status: FriendshipStatus? = nil,
        uid1: String? = nil,
        uid2: String? = nil
    ) -> Friendship {
        return Friendship(
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

public enum FriendshipStatus: String, Codable {
    case friendshipStatusAccepted = "FRIENDSHIP_STATUS_ACCEPTED"
    case friendshipStatusRejected = "FRIENDSHIP_STATUS_REJECTED"
    case friendshipStatusRequested = "FRIENDSHIP_STATUS_REQUESTED"
    case friendshipStatusUnspecified = "FRIENDSHIP_STATUS_UNSPECIFIED"
}

// MARK: - Game
public struct Game: Codable {
    public let board: [BoardElement]?
    public let createdDate: Date?
    public let currentPlayer: Int
    public let id: String
    public let players: [String]
    public let updatedDate: Date?

    public init(board: [BoardElement]?, createdDate: Date?, currentPlayer: Int, id: String, players: [String], updatedDate: Date?) {
        self.board = board
        self.createdDate = createdDate
        self.currentPlayer = currentPlayer
        self.id = id
        self.players = players
        self.updatedDate = updatedDate
    }
}

// MARK: Game convenience initializers and mutators

public extension Game {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Game.self, from: data)
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
        board: [BoardElement]?? = nil,
        createdDate: Date?? = nil,
        currentPlayer: Int? = nil,
        id: String? = nil,
        players: [String]? = nil,
        updatedDate: Date?? = nil
    ) -> Game {
        return Game(
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

// MARK: - BoardElement
public struct BoardElement: Codable {
    public let slots: [SlotElement]

    public init(slots: [SlotElement]) {
        self.slots = slots
    }
}

// MARK: BoardElement convenience initializers and mutators

public extension BoardElement {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(BoardElement.self, from: data)
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
        slots: [SlotElement]? = nil
    ) -> BoardElement {
        return BoardElement(
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

// MARK: - SlotElement
public struct SlotElement: Codable {
    public let user: String?

    public init(user: String?) {
        self.user = user
    }
}

// MARK: SlotElement convenience initializers and mutators

public extension SlotElement {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SlotElement.self, from: data)
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
        user: String?? = nil
    ) -> SlotElement {
        return SlotElement(
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

// MARK: - GameMember
public struct GameMember: Codable {
    public let gameID, userID: String

    public enum CodingKeys: String, CodingKey {
        case gameID
        case userID
    }

    public init(gameID: String, userID: String) {
        self.gameID = gameID
        self.userID = userID
    }
}

// MARK: GameMember convenience initializers and mutators

public extension GameMember {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GameMember.self, from: data)
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
        gameID: String? = nil,
        userID: String? = nil
    ) -> GameMember {
        return GameMember(
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

// MARK: - GameRow
public struct GameRow: Codable {
    public let slots: [SlotElement]

    public init(slots: [SlotElement]) {
        self.slots = slots
    }
}

// MARK: GameRow convenience initializers and mutators

public extension GameRow {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GameRow.self, from: data)
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
        slots: [SlotElement]? = nil
    ) -> GameRow {
        return GameRow(
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

// MARK: - GameSlot
public struct GameSlot: Codable {
    public let user: String?

    public init(user: String?) {
        self.user = user
    }
}

// MARK: GameSlot convenience initializers and mutators

public extension GameSlot {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GameSlot.self, from: data)
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
        user: String?? = nil
    ) -> GameSlot {
        return GameSlot(
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

// MARK: - User
public struct User: Codable {
    public let createdDate: Date?
    public let email, id, name: String
    public let updatedDate: Date?

    public init(createdDate: Date?, email: String, id: String, name: String, updatedDate: Date?) {
        self.createdDate = createdDate
        self.email = email
        self.id = id
        self.name = name
        self.updatedDate = updatedDate
    }
}

// MARK: User convenience initializers and mutators

public extension User {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(User.self, from: data)
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
        createdDate: Date?? = nil,
        email: String? = nil,
        id: String? = nil,
        name: String? = nil,
        updatedDate: Date?? = nil
    ) -> User {
        return User(
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

public typealias Timestamp = Date

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
