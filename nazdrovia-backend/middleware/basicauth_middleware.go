package middleware

import (
	"os"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/basicauth"
)

// AuthReq middleware
func AuthReq() func(*fiber.Ctx) error {
	cfg := basicauth.Config{
		Users: map[string]string{
			os.Getenv("BACKEND_USERNAME"): os.Getenv("BACKEND_PASSWORD"),
		},
	}

	return basicauth.New(cfg)
}
