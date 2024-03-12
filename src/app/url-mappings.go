package app

import (
	"github.com/rogik/store-users-api/controllers/ping"
	"github.com/rogik/store-users-api/controllers/users"
)

func mapUrls() {
	router.GET("/ping", ping.Ping)
	router.POST("/users", users.CreateUser)
	router.GET("/users/:user-id", users.GetUser)
	router.GET("/uses/search", users.SearchUser)
}
