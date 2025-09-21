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
//    user, err := UnmarshalUser(bytes)
//    bytes, err = user.Marshal()
//
//    timestamp, err := UnmarshalTimestamp(bytes)
//    bytes, err = timestamp.Marshal()

package model

import "time"

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

func UnmarshalUser(data []byte) (User, error) {
	var r User
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *User) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type Timestamp time.Time

func UnmarshalTimestamp(data []byte) (Timestamp, error) {
	var r Timestamp
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Timestamp) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type Friendship struct {
	AcceptedDate  *time.Time       `json:"acceptedDate,omitempty" dynamodbav:"acceptedDate,omitempty"`
	Initiator     string           `json:"initiator" dynamodbav:"initiator"`
	RequestedDate *time.Time       `json:"requestedDate,omitempty" dynamodbav:"requestedDate,omitempty"`
	Status        FriendshipStatus `json:"status" dynamodbav:"status"`
	Uid1          string           `json:"uid1" dynamodbav:"uid1"`
	Uid2          string           `json:"uid2" dynamodbav:"uid2"`
}

type Game struct {
	Board         []BoardElement `json:"board,omitempty" dynamodbav:"board,omitempty"`
	CreatedDate   *time.Time     `json:"createdDate,omitempty" dynamodbav:"createdDate,omitempty"`
	CurrentPlayer int64          `json:"currentPlayer" dynamodbav:"currentPlayer"`
	ID            string         `json:"id" dynamodbav:"id"`
	Players       []string       `json:"players" dynamodbav:"players"`
	UpdatedDate   *time.Time     `json:"updatedDate,omitempty" dynamodbav:"updatedDate,omitempty"`
}

type BoardElement struct {
	Slots []SlotElement `json:"slots" dynamodbav:"slots"`
}

type SlotElement struct {
	User *string `json:"user,omitempty" dynamodbav:"user,omitempty"`
}

type GameMember struct {
	GameID string `json:"gameId" dynamodbav:"gameId"`
	UserID string `json:"userId" dynamodbav:"userId"`
}

type GameRow struct {
	Slots []SlotElement `json:"slots" dynamodbav:"slots"`
}

type GameSlot struct {
	User *string `json:"user,omitempty" dynamodbav:"user,omitempty"`
}

type User struct {
	CreatedDate *time.Time `json:"createdDate,omitempty" dynamodbav:"createdDate,omitempty"`
	Email       string     `json:"email" dynamodbav:"email"`
	ID          string     `json:"id" dynamodbav:"id"`
	Name        string     `json:"name" dynamodbav:"name"`
	UpdatedDate *time.Time `json:"updatedDate,omitempty" dynamodbav:"updatedDate,omitempty"`
}

type FriendshipStatus string

const (
	FriendshipStatusAccepted    FriendshipStatus = "FRIENDSHIP_STATUS_ACCEPTED"
	FriendshipStatusRejected    FriendshipStatus = "FRIENDSHIP_STATUS_REJECTED"
	FriendshipStatusRequested   FriendshipStatus = "FRIENDSHIP_STATUS_REQUESTED"
	FriendshipStatusUnspecified FriendshipStatus = "FRIENDSHIP_STATUS_UNSPECIFIED"
)
