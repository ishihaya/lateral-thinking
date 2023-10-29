// Code generated by MockGen. DO NOT EDIT.
// Source: puzzle.go
//
// Generated by this command:
//
//	mockgen -source=puzzle.go -destination=./mock_repository/puzzle.go -package=mock_repository
//
// Package mock_repository is a generated GoMock package.
package mock_repository

import (
	context "context"
	reflect "reflect"

	model "github.com/ishihaya/lateral-thinking-backend/domain/model"
	gomock "go.uber.org/mock/gomock"
)

// MockPuzzleRepository is a mock of PuzzleRepository interface.
type MockPuzzleRepository struct {
	ctrl     *gomock.Controller
	recorder *MockPuzzleRepositoryMockRecorder
}

// MockPuzzleRepositoryMockRecorder is the mock recorder for MockPuzzleRepository.
type MockPuzzleRepositoryMockRecorder struct {
	mock *MockPuzzleRepository
}

// NewMockPuzzleRepository creates a new mock instance.
func NewMockPuzzleRepository(ctrl *gomock.Controller) *MockPuzzleRepository {
	mock := &MockPuzzleRepository{ctrl: ctrl}
	mock.recorder = &MockPuzzleRepositoryMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockPuzzleRepository) EXPECT() *MockPuzzleRepositoryMockRecorder {
	return m.recorder
}

// List mocks base method.
func (m *MockPuzzleRepository) List(ctx context.Context, limit int) ([]*model.Puzzle, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "List", ctx, limit)
	ret0, _ := ret[0].([]*model.Puzzle)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// List indicates an expected call of List.
func (mr *MockPuzzleRepositoryMockRecorder) List(ctx, limit any) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "List", reflect.TypeOf((*MockPuzzleRepository)(nil).List), ctx, limit)
}
