package appv1

import (
	"context"

	"github.com/ishihaya/lateral-thinking-backend/domain/model"
	appv1 "github.com/ishihaya/lateral-thinking-backend/internal/handler/proto/app/v1"
)

func modelToProtoPuzzles(ps []*model.Puzzle) []*appv1.Puzzle {
	res := make([]*appv1.Puzzle, len(ps))
	for i, p := range ps {
		res[i] = &appv1.Puzzle{
			Id:       p.ID().String(),
			Question: p.Question(),
			Answer:   p.Answer(),
		}
	}
	return res
}

func (h *handler) ListPuzzles(ctx context.Context, req *appv1.ListPuzzlesRequest) (*appv1.ListPuzzlesResponse, error) {
	ps, err := h.puzzleUsecase.List(ctx, int(req.Limit))
	if err != nil {
		return nil, err
	}
	return &appv1.ListPuzzlesResponse{
		Puzzles: modelToProtoPuzzles(ps),
	}, nil
}
