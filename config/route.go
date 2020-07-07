package config

import (
	"fmt"
	"github.com/gorilla/mux"
	"log"
	"net/http"
)

func CreateRouter() *mux.Router {
	router := mux.NewRouter()
	return router
}


func RunServer(router *mux.Router) {
	port := "9000"
	fmt.Println("Starting web to port :" + port)
	err := http.ListenAndServe(": "+port, router)
	if err != nil {
		log.Fatal(err)
	}
}