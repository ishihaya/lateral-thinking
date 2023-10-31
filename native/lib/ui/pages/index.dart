
import 'package:flutter/material.dart';
import 'package:lateral_thinking/domain/model/puzzle.dart';
import 'package:lateral_thinking/infrastructure/repositoryimpl/mock/puzzle.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _CardFlipSample(),
    );
  }
}

class _CardFlipSample extends StatefulWidget {
  const _CardFlipSample();

  @override
  _CardFlipSampleState createState() => _CardFlipSampleState();
}

class _CardFlipSampleState extends State<_CardFlipSample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _frontRotation;
  late Animation<double> _backRotation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _frontRotation = Tween(begin: 0.0, end: -3.14 / 2).animate(CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.5)));
    _backRotation = Tween(begin: 3.14 / 2, end: 0.0).animate(CurvedAnimation(parent: _controller, curve: const Interval(0.5, 1.0)));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleCard() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;
    double height = MediaQuery.of(context).size.height * 0.6;
    
    return Scaffold(
      body: FutureBuilder<List<Puzzle>>(
        future: MockPuzzleRepository().listPuzzles(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          final puzzles = snapshot.data!;
          return Center(
        child:       PageView.builder(
        itemCount: puzzles.length,
        itemBuilder: (context, index) {
          final puzzle = puzzles[index];
          return GestureDetector(
            onTap: _toggleCard,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                if (_controller.value < 0.5) {
                  return Center(
                    child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(_frontRotation.value),
                    child: _buildCard(puzzle.question, width, height, true),
                  ),
                  );
                } else {
                  return Center(child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(_backRotation.value),
                    child: _buildCard(puzzle.answer, width, height, false),
                  ));
                }
              },
            ),
          );
        },
      ),
      );
        },
        )
    );
  }

  Widget _buildCard(String text, double width, double height, bool isFront) {
    return Container(
    width: width,
    height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            isFront ? 
            'assets/images/card_front.png' : 
            'assets/images/card_back.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Column(
     mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
        Padding(
          padding: const EdgeInsets.only(top: 20), 
          child: Text(
            isFront ? "Question" : "Answer",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child:           Center(
            child: SizedBox(
        width: width * 0.8,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        ),)
        ),
        ])
      ),
    );
  }
}
