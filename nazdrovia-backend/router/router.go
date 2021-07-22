package router

import (
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/logger"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/controllers"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/middleware"
)

const post string = "/post"
const update string = "/update"
const delete string = "/delete"

const achievements string = "/achievements"
const achievementsWithCategories string = "/achievements-with-categories"
const achievementCreate string = achievements + post
const players string = "/players"
const playersWithAchievements string = "/players-with-achievements"
const rulesContainersWithCategories string = "/rules-containers-with-categories"

const token string = "/token"

// SetupRoutes func
func SetupRoutes(app *fiber.App) {
	// Middleware
	route := app.Group("/api/v1", logger.New() /*, middleware.AuthReq()*/)

	// routes

	// ACHIEVEMENTS
	route.Get(achievements, controllers.GetAllAchievements)
	route.Get(achievementsWithCategories, controllers.GetAllAchievementsWithCategories)
	route.Post(achievementCreate, middleware.JWTProtected(), controllers.CreateAchievement)

	// PLAYERS
	route.Get(players, controllers.GetAllPlayers)
	route.Get(playersWithAchievements, controllers.GetAllPlayersWithAchievements)

	// RULES
	route.Get(rulesContainersWithCategories, controllers.GetAllRulesContainersWithCategories)

	// api.Get("/:id", handler.GetSingleProduct)
	// api.Post("/", handler.CreateProduct)
	// api.Delete("/:id", handler.DeleteProduct)

	// TEMP
	route.Get(token, controllers.GetNewAccessToken)
}
