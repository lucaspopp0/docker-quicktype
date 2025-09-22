// Code generated from JSON Schema using quicktype. DO NOT EDIT.
// To parse and unparse this JSON data, add this code to your project and do:
//
//    friendship, err := UnmarshalFriendship(bytes)
//    bytes, err = friendship.Marshal()
//
//    game, err := UnmarshalGame(bytes)
//    bytes, err = game.Marshal()
//
//    gameMember, err := UnmarshalGameMember(bytes)
//    bytes, err = gameMember.Marshal()
//
//    gameRow, err := UnmarshalGameRow(bytes)
//    bytes, err = gameRow.Marshal()
//
//    gameSlot, err := UnmarshalGameSlot(bytes)
//    bytes, err = gameSlot.Marshal()
//
//    timestamp, err := UnmarshalTimestamp(bytes)
//    bytes, err = timestamp.Marshal()
//
//    user, err := UnmarshalUser(bytes)
//    bytes, err = user.Marshal()

package model

import "encoding/json"

func UnmarshalFriendship(data []byte) (Friendship, error) {
	var r Friendship
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Friendship) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalGame(data []byte) (Game, error) {
	var r Game
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Game) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalGameMember(data []byte) (GameMember, error) {
	var r GameMember
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *GameMember) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalGameRow(data []byte) (GameRow, error) {
	var r GameRow
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *GameRow) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalGameSlot(data []byte) (GameSlot, error) {
	var r GameSlot
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *GameSlot) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalTimestamp(data []byte) (Timestamp, error) {
	var r Timestamp
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Timestamp) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalUser(data []byte) (User, error) {
	var r User
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *User) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type Friendship struct {
	ID                   string               `json:"$id" dynamodbav:"$id"`
	Schema               string               `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool                 `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           FriendshipProperties `json:"properties" dynamodbav:"properties"`
	Required             []string             `json:"required" dynamodbav:"required"`
	Title                string               `json:"title" dynamodbav:"title"`
	Type                 string               `json:"type" dynamodbav:"type"`
}

type FriendshipProperties struct {
	AcceptedDate  AcceptedDate `json:"acceptedDate" dynamodbav:"acceptedDate"`
	Initiator     Initiator    `json:"initiator" dynamodbav:"initiator"`
	RequestedDate AcceptedDate `json:"requestedDate" dynamodbav:"requestedDate"`
	Status        Status       `json:"status" dynamodbav:"status"`
	Uid1          Initiator    `json:"uid1" dynamodbav:"uid1"`
	Uid2          Initiator    `json:"uid2" dynamodbav:"uid2"`
}

type AcceptedDate struct {
	Ref string `json:"$ref" dynamodbav:"$ref"`
}

type Initiator struct {
	Type Type `json:"type" dynamodbav:"type"`
}

type Status struct {
	Enum  []string `json:"enum" dynamodbav:"enum"`
	Title string   `json:"title" dynamodbav:"title"`
	Type  Type     `json:"type" dynamodbav:"type"`
}

type Game struct {
	ID                   string         `json:"$id" dynamodbav:"$id"`
	Schema               string         `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool           `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           GameProperties `json:"properties" dynamodbav:"properties"`
	Required             []string       `json:"required" dynamodbav:"required"`
	Title                string         `json:"title" dynamodbav:"title"`
	Type                 string         `json:"type" dynamodbav:"type"`
}

type GameProperties struct {
	Board         Board         `json:"board" dynamodbav:"board"`
	CreatedDate   AcceptedDate  `json:"createdDate" dynamodbav:"createdDate"`
	CurrentPlayer CurrentPlayer `json:"currentPlayer" dynamodbav:"currentPlayer"`
	ID            Initiator     `json:"id" dynamodbav:"id"`
	Players       Players       `json:"players" dynamodbav:"players"`
	UpdatedDate   AcceptedDate  `json:"updatedDate" dynamodbav:"updatedDate"`
}

type Board struct {
	Items AcceptedDate `json:"items" dynamodbav:"items"`
	Type  string       `json:"type" dynamodbav:"type"`
}

type CurrentPlayer struct {
	Maximum int64  `json:"maximum" dynamodbav:"maximum"`
	Minimum int64  `json:"minimum" dynamodbav:"minimum"`
	Type    string `json:"type" dynamodbav:"type"`
}

type Players struct {
	Items Initiator `json:"items" dynamodbav:"items"`
	Type  string    `json:"type" dynamodbav:"type"`
}

type GameMember struct {
	ID                   string               `json:"$id" dynamodbav:"$id"`
	Schema               string               `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool                 `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           GameMemberProperties `json:"properties" dynamodbav:"properties"`
	Required             []string             `json:"required" dynamodbav:"required"`
	Title                string               `json:"title" dynamodbav:"title"`
	Type                 string               `json:"type" dynamodbav:"type"`
}

type GameMemberProperties struct {
	GameID Initiator `json:"gameId" dynamodbav:"gameId"`
	UserID Initiator `json:"userId" dynamodbav:"userId"`
}

type GameRow struct {
	ID                   string            `json:"$id" dynamodbav:"$id"`
	Schema               string            `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool              `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           GameRowProperties `json:"properties" dynamodbav:"properties"`
	Required             []string          `json:"required" dynamodbav:"required"`
	Title                string            `json:"title" dynamodbav:"title"`
	Type                 string            `json:"type" dynamodbav:"type"`
}

type GameRowProperties struct {
	Slots Board `json:"slots" dynamodbav:"slots"`
}

type GameSlot struct {
	ID                   string             `json:"$id" dynamodbav:"$id"`
	Schema               string             `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool               `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           GameSlotProperties `json:"properties" dynamodbav:"properties"`
	Title                string             `json:"title" dynamodbav:"title"`
	Type                 string             `json:"type" dynamodbav:"type"`
}

type GameSlotProperties struct {
	User Initiator `json:"user" dynamodbav:"user"`
}

type Timestamp struct {
	ID     string `json:"$id" dynamodbav:"$id"`
	Schema string `json:"$schema" dynamodbav:"$schema"`
	Format string `json:"format" dynamodbav:"format"`
	Title  string `json:"title" dynamodbav:"title"`
	Type   Type   `json:"type" dynamodbav:"type"`
}

type User struct {
	ID                   string         `json:"$id" dynamodbav:"$id"`
	Schema               string         `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool           `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           UserProperties `json:"properties" dynamodbav:"properties"`
	Required             []string       `json:"required" dynamodbav:"required"`
	Title                string         `json:"title" dynamodbav:"title"`
	Type                 string         `json:"type" dynamodbav:"type"`
}

type UserProperties struct {
	CreatedDate AcceptedDate `json:"createdDate" dynamodbav:"createdDate"`
	Email       Initiator    `json:"email" dynamodbav:"email"`
	ID          Initiator    `json:"id" dynamodbav:"id"`
	Name        Initiator    `json:"name" dynamodbav:"name"`
	UpdatedDate AcceptedDate `json:"updatedDate" dynamodbav:"updatedDate"`
}

type Type string

const (
	String Type = "string"
)
