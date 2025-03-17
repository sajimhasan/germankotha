import 'package:flutter/material.dart';
import 'package:germankotha1/UI/page28.dart';
import 'package:germankotha1/UI/page29.dart';
import 'package:germankotha1/unilt/customappbar.dart';

class page288 extends StatefulWidget {
  const page288({super.key});

  @override
  State<page288> createState() => _StartExamScreenState();
}

class _StartExamScreenState extends State<page288> {

  String selectedExam = 'Math';


  final Map<String, String> examOption = {
    "Math" : '45 min',
    "Science": '30 min',
    "English": '60 min'
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appbarname: "Exam", ontap: (){
        Navigator.pop(context);
      }),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 36,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffe3e3e3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Examinations', ),
                        const SizedBox(width: 13,),
                        DropdownButton<String>(
                          value: selectedExam,
                          items: examOption.keys.map((exam) {
                            return DropdownMenuItem(
                              value: exam,
                              child: Text(exam),
                            );
                          }).toList(),
                          onChanged: (value) {
                            selectedExam = value!;
                            setState(() {});
                          },
                          icon: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 70,),
                  const SizedBox(width: 4,),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffe3e3e3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Time'),
                        const SizedBox(width: 6,),
                        Text(
                          examOption[selectedExam] ?? '00 min',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 72,),
            Text('I am ready', style: TextStyle(fontSize: 28),),
            const SizedBox(height: 24,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2E826E)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => page29(),),);
              },
              child: Text('Start exam', style: TextStyle(fontSize: 18,
                  color: Colors.white),),
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Page28()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(),
              ),
              child: Text('Video lesson', style: TextStyle(fontSize: 18, color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
//Color(0xff2e826e),
  Widget buildAnswerElevatedButton(String title, TextTheme textTheme, Color buttonColor, Color textColor) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: buttonColor,
      ),

      width: 180,
      padding: EdgeInsets.symmetric(vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 24,
            color: textColor
        ),
      ),
    );
  }
}