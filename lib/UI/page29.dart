import 'package:flutter/material.dart';
import 'package:germankotha1/unilt/customappbar.dart';


class page29 extends StatefulWidget {
  const page29({super.key});

  @override
  State<page29> createState() => _AnswerQuestionScreenState();
}

class _AnswerQuestionScreenState extends State<page29> {

  String? selectedAnswer;
  bool showResult = false;
  final String correctAnswer = "B";

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar:CustomAppBar(appbarname: 'Exam', ontap: (){
        Navigator.pop(context);
      }),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 32),
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffe3e3e3),
                borderRadius: BorderRadius.circular(24),
              ),
              //constraints: BoxConstraints(maxWidth: 350, ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    'What would you like to practice?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Answer',
                style: textTheme.titleLarge,
              ),
            ),
            SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: ["A","B",].map((answer)
                => buildAnswerButton(answer)).toList(),
                
              ),
              
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: ["C","D"].map((answer)
                => buildAnswerButton(answer)).toList(),
              ),
            ),

            SizedBox(height: 16,),
            if(selectedAnswer != null)
            ElevatedButton(
              onPressed: () {
                showResult = true;
                setState(() {});
              },
              child: Text(
                  'View result',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16,),
            if(showResult)
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Right answer is ($correctAnswer)',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

            if(selectedAnswer != correctAnswer)
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Your answer is wrong!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }

  GestureDetector buildAnswerButton(String answer) {
    return GestureDetector(
                onTap:
                  selectedAnswer == null
                  ? () {
                  selectedAnswer = answer;
                  setState(() {});
                  } : null,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 74),
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: selectedAnswer == answer
                        ? (answer == correctAnswer ? Color(0xff2e826e) : Colors.red)
                        : Color(0xffe3e3e3),

                  ),
                  child: Text(
                    answer, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              );
  }
//Color(0xff2e826e)
}