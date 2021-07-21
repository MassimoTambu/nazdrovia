package middleware

import (
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/basicauth"
	"gitlab.com/Snorf_97/nazdrovia/nazdrovia-backend/configs"
)

// AuthReq middleware
func AuthReq() func(*fiber.Ctx) error {
	cfg := basicauth.Config{
		Users: map[string]string{
			configs.Config("BACKEND_USERNAME"): configs.Config("BACKEND_PASSWORD"),
		},
	}

	return basicauth.New(cfg)
}
