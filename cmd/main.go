package main

import (
	"fmt"
	"github.com/caarlos0/env/v10"
	"github.com/gofiber/fiber/v2"
	"github.com/joho/godotenv"
)

type Config struct {
	AppNAme    string `env:"APPNAME,required"`
	Version    string `env:"VERSION,required"`
	ApiVersion string `env:"APIVERSION,required"`
	Listen     string `env:"LISTEN,required"`
}

func main() {
	err := godotenv.Load()
	cfg := Config{} // 👈 new instance of `Config`

	err = env.Parse(&cfg) // 👈 Parse environment variables into `Config`
	if err != nil {
		fmt.Printf("unable to parse ennvironment variables: %e\n", err)
	}
	if err != nil {
		fmt.Println(err)
	}
	app := fiber.New()

	app.Get("/", func(c *fiber.Ctx) error {
		return c.SendString("Hello, World!")
	})

	// Start the server

	if err := app.Listen(cfg.Listen); err != nil {
		panic(err)
	}
	fmt.Printf("%v started\n", cfg.AppNAme)
}
