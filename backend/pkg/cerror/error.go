package cerror

import "errors"

type Error struct {
	error
}

func New(msg string) Error {
	return Error{error: errors.New(msg)}
}
