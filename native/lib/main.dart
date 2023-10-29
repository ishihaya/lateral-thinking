import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Flip Sample',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CardFlipSample(),
    );
  }
}

class QuestionAnswer {
  final String question;
  final String answer;

  QuestionAnswer({required this.question, required this.answer});
}

class CardFlipSample extends StatefulWidget {
  @override
  _CardFlipSampleState createState() => _CardFlipSampleState();
}

class _CardFlipSampleState extends State<CardFlipSample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _frontRotation;
  late Animation<double> _backRotation;

  final List<QuestionAnswer> qaList = [
    QuestionAnswer(question: 'theABO blood groups', answer: 'ABOの血液型'),
    QuestionAnswer(question: 'theABO blood groups2', answer: 'ABOの血液型2'),
    // 他の質問と回答のペアをここに追加
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 1), vsync: this);
    _frontRotation = Tween(begin: 0.0, end: -3.14 / 2).animate(CurvedAnimation(parent: _controller, curve: Interval(0.0, 0.5)));
    _backRotation = Tween(begin: 3.14 / 2, end: 0.0).animate(CurvedAnimation(parent: _controller, curve: Interval(0.5, 1.0)));
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
      appBar: AppBar(title: Text('Card Flip Sample')),
      body: Center(
    //         widthFactor: 0.8,
    // heightFactor: 0.6,
        child:       PageView.builder(
        itemCount: qaList.length,
        itemBuilder: (context, index) {
          final qa = qaList[index];
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
                    child: _buildCard(qa.question, width, height),
                  ),
                  );
                } else {
                  return Center(child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(_backRotation.value),
                    child: _buildCard(qa.answer, width, height),
                  ));
                }
              },
            ),
          );
        },
      ),
      )

    );
  }

  Widget _buildCard(String text, double width, double height) {
    return Container(
    width: width,
    height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
