package tables

type Table interface {
	TableName() string
	Id() string
}

//region AchievementsCategoryTable

type AchievementsCategoryTable struct {
}

func (table AchievementsCategoryTable) TableName() string {
	return "\"achievementsCategory\""
}

func (table AchievementsCategoryTable) Id() string {
	return "id"
}

func (table AchievementsCategoryTable) Category() string {
	return "category"
}

//endregion

//region AchievementsTable

type AchievementsTable struct {
}

func (table AchievementsTable) TableName() string {
	return "achievements"
}

func (table AchievementsTable) Id() string {
	return "id"
}

func (table AchievementsTable) Title() string {
	return "title"
}

func (table AchievementsTable) Description() string {
	return "description"
}

func (table AchievementsTable) NasScore() string {
	return "nasScore"
}

func (table AchievementsTable) Icon() string {
	return "icon"
}

func (table AchievementsTable) CategoryId() string {
	return "categoryId"
}

//endregion

//region PlayersAchievementsRefTable

type PlayersAchievementsRefTable struct {
}

func (table PlayersAchievementsRefTable) TableName() string {
	return "\"playersAchievementsRef\""
}

func (table PlayersAchievementsRefTable) Id() string {
	return "id"
}

func (table PlayersAchievementsRefTable) AchievementId() string {
	return "achievementId"
}

func (table PlayersAchievementsRefTable) PlayerId() string {
	return "playerId"
}

//endregion

//region PlayersTable

type PlayersTable struct {
}

func (table PlayersTable) TableName() string {
	return "players"
}

func (table PlayersTable) Id() string {
	return "id"
}

func (table PlayersTable) Name() string {
	return "name"
}

func (table PlayersTable) LastName() string {
	return "lastName"
}

func (table PlayersTable) CatchPhrase() string {
	return "catchPhrase"
}

func (table PlayersTable) Penalities() string {
	return "penalities"
}

func (table PlayersTable) IsOut() string {
	return "isOut"
}

func (table PlayersTable) Image() string {
	return "image"
}

//endregion

//region RuleTable

type RuleTable struct {
}

func (table RuleTable) TableName() string {
	return "rule"
}

func (table RuleTable) Id() string {
	return "id"
}

func (table RuleTable) Number() string {
	return "number"
}

func (table RuleTable) Title() string {
	return "title"
}

func (table RuleTable) Fescription() string {
	return "description"
}

//endregion

//region RulesCategoryTable

type RulesCategoryTable struct {
}

func (table RulesCategoryTable) TableName() string {
	return "\"rulesCategory\""
}

func (table RulesCategoryTable) Id() string {
	return "id"
}

func (table RulesCategoryTable) Category() string {
	return "category"
}

//endregion

//region RulesContainerRefTable

type RulesContainerRefTable struct {
}

func (table RulesContainerRefTable) TableName() string {
	return "\"rulesContainerRef\""
}

func (table RulesContainerRefTable) Id() string {
	return "id"
}

func (table RulesContainerRefTable) RuleId() string {
	return "ruleId"
}

func (table RulesContainerRefTable) RuleContainerId() string {
	return "ruleContainerId"
}

//endregion

//region RulesContainerTable

type RulesContainerTable struct {
}

func (table RulesContainerTable) TableName() string {
	return "\"rulesContainer\""
}

func (table RulesContainerTable) Id() string {
	return "id"
}

func (table RulesContainerTable) Prologue() string {
	return "prologue"
}

func (table RulesContainerTable) Epilogue() string {
	return "epilogue"
}

func (table RulesContainerTable) CategoryId() string {
	return "categoryId"
}

//endregion
