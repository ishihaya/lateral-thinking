package model

type Puzzle struct {
	id       ID
	question string
	answer   string
}

func NewPuzzle(
	question string,
	answer string,
) (*Puzzle, error) {
	return &Puzzle{
		id:       NewID(),
		question: question,
		answer:   answer,
	}, nil
}

func (p Puzzle) ID() ID {
	return p.id
}

func (p Puzzle) Question() string {
	return p.question
}

func (p Puzzle) Answer() string {
	return p.answer
}
