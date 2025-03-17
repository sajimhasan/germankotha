import 'package:flutter/material.dart';

class LiveClassPage extends StatelessWidget {
  const LiveClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: const Text(
          "Live class",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.notifications_none, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Learning Progress Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFDF6E9),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.red),
                        SizedBox(width: 8),
                        Text(
                          "Learnings today",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Text(
                          "58%/25",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "min",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.arrow_forward, size: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.58,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation(Color(0xff2E826E)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // Week Days
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _buildWeekDays(),
                ),
              ),
              const SizedBox(height: 32),

              // My Schedule
              const Text(
                "My schedule",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // Schedule Timeline
              _buildScheduleItem("8.00", "8.00-8.30", Colors.yellow[50]!),
              _buildScheduleItem("", "8.30-9.00", Colors.pink[50]!),
              Container(
                margin: const EdgeInsets.only(left: 60),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Join now",
                    style: TextStyle(color: Color(0xff2E826E)),
                  ),
                ),
              ),
              _buildScheduleItem("10.00", "10.00-10.30", Colors.yellow[50]!),
              _buildScheduleItem("12.00", "12.00-12.30", Colors.red[50]!),

              const SizedBox(height: 32),

              // Upcoming Classes
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    _buildUpcomingClass("Class", "15min"),
                    const SizedBox(height: 16),
                    _buildUpcomingClass("Class", "15min"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff2E826E),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  List<Widget> _buildWeekDays() {
    final days = ['S', 'S', 'M', 'T', 'W', 'T', 'F'];
    final dates = ['13', '14', '15', '16', '17', '18', '19'];
    return List.generate(
      7,
          (index) => Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: index == 2 ? Colors.black : Colors.grey[100],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              days[index],
              style: TextStyle(
                color: index == 2 ? Colors.white : Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              dates[index],
              style: TextStyle(
                color: index == 2 ? Colors.white : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleItem(String time, String duration, Color color) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Text(
            time,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Class",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  duration,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const Icon(Icons.open_in_new, size: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUpcomingClass(String title, String duration) {
    return Row(
      children: [
        const Icon(Icons.book, color: Colors.red),
        const SizedBox(width: 12),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          duration,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(width: 8),
        const Icon(Icons.open_in_new, size: 20),
      ],
    );
  }
}



