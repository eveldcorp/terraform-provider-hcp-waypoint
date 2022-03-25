package waypoint

import (
	"net/http"
	"time"
)

type Client interface {
}

type ClientImpl struct {
	url          string
	clientID     string
	clientSecret string
	client       *http.Client
}

func NewClient(url string, id string, secret string) (Client, error) {
	return &ClientImpl{
		url:          url,
		clientID:     id,
		clientSecret: secret,
		client:       &http.Client{Timeout: 10 * time.Second},
	}, nil
}
