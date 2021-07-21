package models

import "database/sql"

//region Achievements

type Achievement struct {
	Id          int    `db:"id"`
	Title       string `db:"title"`
	Description string `db:"description"`
	NasScore    int    `db:"nasScore"`
	CategoryId  int    `db:"categoryId"`
	Icon        sql.NullString
}

type AchievementsCategory struct {
	Id       int    `db:"id"`
	Category string `db:"category"`
}

type AchievementsContainer struct {
	Category     string        `db:"category"`
	Achievements []Achievement `db:"achievemtens"`
}

//endregion

//region Players

type Player struct {
	Id             int            `db:"id"`
	Name           string         `db:"name"`
	LastName       string         `db:"lastName"`
	CatchPhrase    string         `db:"catchPhrase"`
	Penalities     int            `db:"penalities"`
	IsOut          bool           `db:"isOut"`
	Image          sql.NullString `db:"image"`
	AchievementsId []int          `db:"achievementsId"` // possibile nil
}

type PlayersAchievementsRef struct {
	Id            int `db:"id"`
	AchievementId int `db:"achievementId"`
	PlayerId      int `db:"playerId"`
}

//endregion

//region Rules

type RulesContainerRef struct {
	Id              int `db:"id"`
	RuleId          int `db:"ruleId"`
	RuleContainerId int `db:"ruleContainerId"`
}

type RulesContainer struct {
	Id         int            `db:"id"`
	Title      string         `db:"title"`
	Prologue   sql.NullString `db:"prologue"`
	Rules      []Rule         `db:"rules"` // nil
	Epilogue   sql.NullString `db:"epilogue"`
	CategoryId int            `db:"categoryId"`
}

type RulesContainersWithCategories struct {
	Category       string         `db:"category"`
	RulesContainer RulesContainer `db:"rulesContainer"`
}

type RulesCategory struct {
	Id       int    `db:"id"`
	Category string `db:"category"`
}

type Rule struct {
	Id          int            `db:"id"`
	Number      sql.NullString `db:"number"`
	Title       sql.NullString `db:"title"`
	Description string         `db:"description"`
}

//endregion
