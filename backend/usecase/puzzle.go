package usecase

import (
	"context"

	"github.com/ishihaya/lateral-thinking-backend/domain/model"
	"github.com/ishihaya/lateral-thinking-backend/domain/repository"
)

type PuzzleUsecase interface {
	List(ctx context.Context, limit int) ([]*model.Puzzle, error)
}

type puzzleUsecase struct {
	puzzleRepository repository.PuzzleRepository
}

func NewPuzzleUsecase(
	puzzleRepository repository.PuzzleRepository,
) PuzzleUsecase {
	return &puzzleUsecase{
		puzzleRepository: puzzleRepository,
	}
}

func (pu *puzzleUsecase) List(ctx context.Context, limit int) ([]*model.Puzzle, error) {
	ps, err := pu.puzzleRepository.List(ctx, limit)
	if err != nil {
		return nil, err
	}
	return ps, nil
}
