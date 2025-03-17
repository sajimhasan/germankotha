import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.language, color: Colors.green),
              label: Text("Language", style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("image/8.png"), // Replace with NetworkImage if needed
            ),
            SizedBox(height: 10),
            Text("Danilo Tanic", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("danilo@uscreen.tv", style: TextStyle(color: Colors.grey)),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2E826E)
              ),
              onPressed: () {},
              child: Text("Edit Your Profile",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold
              ),),
            ),

            SizedBox(height: 20),
            StreakChart(),
            Row(
              children: [
                SizedBox(width: 38,),
                Text("Mon"),
                SizedBox(width: 20,),
                Text("Tue"),
                SizedBox(width: 26,),
                Text('Wed'),
                SizedBox(width: 25,),
                Text("Thu"),
                SizedBox(width: 30,),
                Text("Fri"),
                SizedBox(width: 30,),
                Text("Sat"),
                SizedBox(width: 30,),
                Text("Sun")
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StreakChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Streak", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              DropdownButton<String>(
                value: "In a week",
                items: [DropdownMenuItem(child: Text("In a week"), value: "In a week")],
                onChanged: (value) {},
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Legend(color: Colors.green, text: "Practice"),
              SizedBox(width: 10),
              Legend(color: Colors.red, text: "No Practice"),
            ],
          ),
          SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 1.8,
            child: BarChart(
              BarChartData(
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(),
                  bottomTitles: AxisTitles(
                    // sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTitles),
                  ),
                ),
                barGroups: [
                  makeBarGroup(0, 5, 2),
                  makeBarGroup(1, 7, 0),
                  makeBarGroup(2, 6, 1),
                  makeBarGroup(3, 4, 2),
                  makeBarGroup(4, 2, 3),
                  makeBarGroup(5, 5.5, 2),
                  makeBarGroup(6, 7, 0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget getBottomTitles(double value, TitleMeta meta) {
  //   List<String> days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  //   return SideTitleWidget(
  //     axisSide: meta.axisSide,
  //     child: Text(days[value.toInt()], style: TextStyle(fontSize: 12)),
  //   );
  // }

  BarChartGroupData makeBarGroup(int x, double practice, double noPractice) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(toY: practice, color: Colors.green, width: 16),
      BarChartRodData(toY: noPractice, color: Colors.red, width: 16),
    ]
    );

  }
}

class Legend extends StatelessWidget {
  final Color color;
  final String text;

  Legend({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 16, height: 16, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4))),
        SizedBox(width: 4),
        Text(text),
      ],
    );
  }
}
