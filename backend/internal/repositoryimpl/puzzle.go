package repositoryimpl

import (
	"github.com/ishihaya/lateral-thinking-backend/domain/model"
	"github.com/ishihaya/lateral-thinking-backend/domain/repository"
	"github.com/ishihaya/lateral-thinking-backend/domain/repository/mock_repository"
	"go.uber.org/mock/gomock"
)

func NewPuzzleRepository() repository.PuzzleRepository {
	ctrl := gomock.NewController(nil)
	ur := mock_repository.NewMockPuzzleRepository(ctrl)
	testPuzzle, _ := model.NewPuzzle(
		"test",
		"test",
	)
	ur.EXPECT().List(gomock.Any(), gomock.Any()).Return([]*model.Puzzle{testPuzzle}, nil)
	return ur
}
