//go:generate mockgen -source=puzzle.go -destination=./mock_repository/puzzle.go -package=mock_repository
package repository

import (
	"context"

	"github.com/ishihaya/lateral-thinking-backend/domain/model"
)

type PuzzleRepository interface {
	List(ctx context.Context, limit int) ([]*model.Puzzle, error)
}
