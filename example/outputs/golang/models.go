// Code generated from JSON Schema using quicktype. DO NOT EDIT.
// To parse and unparse this JSON data, add this code to your project and do:
//
//    chinesecheckersV1FriendshipJsonschemaStrict, err := UnmarshalChinesecheckersV1FriendshipJsonschemaStrict(bytes)
//    bytes, err = chinesecheckersV1FriendshipJsonschemaStrict.Marshal()
//
//    chinesecheckersV1GameJsonschemaStrict, err := UnmarshalChinesecheckersV1GameJsonschemaStrict(bytes)
//    bytes, err = chinesecheckersV1GameJsonschemaStrict.Marshal()
//
//    chinesecheckersV1GameMemberJsonschemaStrict, err := UnmarshalChinesecheckersV1GameMemberJsonschemaStrict(bytes)
//    bytes, err = chinesecheckersV1GameMemberJsonschemaStrict.Marshal()
//
//    chinesecheckersV1GameRowJsonschemaStrict, err := UnmarshalChinesecheckersV1GameRowJsonschemaStrict(bytes)
//    bytes, err = chinesecheckersV1GameRowJsonschemaStrict.Marshal()
//
//    chinesecheckersV1GameSlotJsonschemaStrict, err := UnmarshalChinesecheckersV1GameSlotJsonschemaStrict(bytes)
//    bytes, err = chinesecheckersV1GameSlotJsonschemaStrict.Marshal()
//
//    chinesecheckersV1UserJsonschemaStrict, err := UnmarshalChinesecheckersV1UserJsonschemaStrict(bytes)
//    bytes, err = chinesecheckersV1UserJsonschemaStrict.Marshal()
//
//    googleProtobufTimestampJsonschemaStrict, err := UnmarshalGoogleProtobufTimestampJsonschemaStrict(bytes)
//    bytes, err = googleProtobufTimestampJsonschemaStrict.Marshal()

package model

import "encoding/json"

func UnmarshalChinesecheckersV1FriendshipJsonschemaStrict(data []byte) (ChinesecheckersV1FriendshipJsonschemaStrict, error) {
	var r ChinesecheckersV1FriendshipJsonschemaStrict
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ChinesecheckersV1FriendshipJsonschemaStrict) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalChinesecheckersV1GameJsonschemaStrict(data []byte) (ChinesecheckersV1GameJsonschemaStrict, error) {
	var r ChinesecheckersV1GameJsonschemaStrict
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ChinesecheckersV1GameJsonschemaStrict) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalChinesecheckersV1GameMemberJsonschemaStrict(data []byte) (ChinesecheckersV1GameMemberJsonschemaStrict, error) {
	var r ChinesecheckersV1GameMemberJsonschemaStrict
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ChinesecheckersV1GameMemberJsonschemaStrict) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalChinesecheckersV1GameRowJsonschemaStrict(data []byte) (ChinesecheckersV1GameRowJsonschemaStrict, error) {
	var r ChinesecheckersV1GameRowJsonschemaStrict
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ChinesecheckersV1GameRowJsonschemaStrict) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalChinesecheckersV1GameSlotJsonschemaStrict(data []byte) (ChinesecheckersV1GameSlotJsonschemaStrict, error) {
	var r ChinesecheckersV1GameSlotJsonschemaStrict
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ChinesecheckersV1GameSlotJsonschemaStrict) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalChinesecheckersV1UserJsonschemaStrict(data []byte) (ChinesecheckersV1UserJsonschemaStrict, error) {
	var r ChinesecheckersV1UserJsonschemaStrict
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *ChinesecheckersV1UserJsonschemaStrict) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalGoogleProtobufTimestampJsonschemaStrict(data []byte) (GoogleProtobufTimestampJsonschemaStrict, error) {
	var r GoogleProtobufTimestampJsonschemaStrict
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *GoogleProtobufTimestampJsonschemaStrict) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type ChinesecheckersV1FriendshipJsonschemaStrict struct {
	ID                   string                                                `json:"$id" dynamodbav:"$id"`
	Schema               string                                                `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool                                                  `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           ChinesecheckersV1FriendshipJsonschemaStrictProperties `json:"properties" dynamodbav:"properties"`
	Required             []string                                              `json:"required" dynamodbav:"required"`
	Title                string                                                `json:"title" dynamodbav:"title"`
	Type                 string                                                `json:"type" dynamodbav:"type"`
}

type ChinesecheckersV1FriendshipJsonschemaStrictProperties struct {
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

type ChinesecheckersV1GameJsonschemaStrict struct {
	ID                   string                                          `json:"$id" dynamodbav:"$id"`
	Schema               string                                          `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool                                            `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           ChinesecheckersV1GameJsonschemaStrictProperties `json:"properties" dynamodbav:"properties"`
	Required             []string                                        `json:"required" dynamodbav:"required"`
	Title                string                                          `json:"title" dynamodbav:"title"`
	Type                 string                                          `json:"type" dynamodbav:"type"`
}

type ChinesecheckersV1GameJsonschemaStrictProperties struct {
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

type ChinesecheckersV1GameMemberJsonschemaStrict struct {
	ID                   string                                                `json:"$id" dynamodbav:"$id"`
	Schema               string                                                `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool                                                  `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           ChinesecheckersV1GameMemberJsonschemaStrictProperties `json:"properties" dynamodbav:"properties"`
	Required             []string                                              `json:"required" dynamodbav:"required"`
	Title                string                                                `json:"title" dynamodbav:"title"`
	Type                 string                                                `json:"type" dynamodbav:"type"`
}

type ChinesecheckersV1GameMemberJsonschemaStrictProperties struct {
	GameID Initiator `json:"gameId" dynamodbav:"gameId"`
	UserID Initiator `json:"userId" dynamodbav:"userId"`
}

type ChinesecheckersV1GameRowJsonschemaStrict struct {
	ID                   string                                             `json:"$id" dynamodbav:"$id"`
	Schema               string                                             `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool                                               `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           ChinesecheckersV1GameRowJsonschemaStrictProperties `json:"properties" dynamodbav:"properties"`
	Required             []string                                           `json:"required" dynamodbav:"required"`
	Title                string                                             `json:"title" dynamodbav:"title"`
	Type                 string                                             `json:"type" dynamodbav:"type"`
}

type ChinesecheckersV1GameRowJsonschemaStrictProperties struct {
	Slots Board `json:"slots" dynamodbav:"slots"`
}

type ChinesecheckersV1GameSlotJsonschemaStrict struct {
	ID                   string                                              `json:"$id" dynamodbav:"$id"`
	Schema               string                                              `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool                                                `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           ChinesecheckersV1GameSlotJsonschemaStrictProperties `json:"properties" dynamodbav:"properties"`
	Title                string                                              `json:"title" dynamodbav:"title"`
	Type                 string                                              `json:"type" dynamodbav:"type"`
}

type ChinesecheckersV1GameSlotJsonschemaStrictProperties struct {
	User Initiator `json:"user" dynamodbav:"user"`
}

type ChinesecheckersV1UserJsonschemaStrict struct {
	ID                   string                                          `json:"$id" dynamodbav:"$id"`
	Schema               string                                          `json:"$schema" dynamodbav:"$schema"`
	AdditionalProperties bool                                            `json:"additionalProperties" dynamodbav:"additionalProperties"`
	Properties           ChinesecheckersV1UserJsonschemaStrictProperties `json:"properties" dynamodbav:"properties"`
	Required             []string                                        `json:"required" dynamodbav:"required"`
	Title                string                                          `json:"title" dynamodbav:"title"`
	Type                 string                                          `json:"type" dynamodbav:"type"`
}

type ChinesecheckersV1UserJsonschemaStrictProperties struct {
	CreatedDate AcceptedDate `json:"createdDate" dynamodbav:"createdDate"`
	Email       Initiator    `json:"email" dynamodbav:"email"`
	ID          Initiator    `json:"id" dynamodbav:"id"`
	Name        Initiator    `json:"name" dynamodbav:"name"`
	UpdatedDate AcceptedDate `json:"updatedDate" dynamodbav:"updatedDate"`
}

type GoogleProtobufTimestampJsonschemaStrict struct {
	ID     string `json:"$id" dynamodbav:"$id"`
	Schema string `json:"$schema" dynamodbav:"$schema"`
	Format string `json:"format" dynamodbav:"format"`
	Title  string `json:"title" dynamodbav:"title"`
	Type   Type   `json:"type" dynamodbav:"type"`
}

type Type string

const (
	String Type = "string"
)
