import 'package:flutter/material.dart';
import 'trains_screen.dart';
import 'tickets_screen.dart';
import 'schedule_screen.dart';
import 'stations_screen.dart';
import 'weather_screen.dart';


class Loginscreen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Image Section
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 500,
                child: Image.asset(
                  'lib/images/speed.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 40,
                left: 15,
                child: IconButton(
                  icon:  Icon(Icons.menu, color: Colors.green.shade200),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 40,
                right: 15,
                child: IconButton(
                  icon: Icon(Icons.search, color: Colors.green.shade200),
                  onPressed: () {},
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Bottom Card with Options
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                    spreadRadius: 10,
                  ),
                ],
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Row with 4 Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      homeIcon(context, Icons.train, "Trains", trains_screen()),
                      homeIcon(context, Icons.confirmation_number, "Tickets",
                          TicketsScreen()),
                      homeIcon(context, Icons.schedule, "Schedule",
                          ScheduleScreen()),
                      homeIcon(context, Icons.location_on, "Stations",
                          StationsScreen()),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Weather Icon
                  homeIcon(context, Icons.cloud, "Weather", WeatherScreen()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for Home Icons
  Widget homeIcon(
      BuildContext context, IconData icon, String label, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue[50],
            child: Icon(icon, color: Colors.green.shade300, size: 30),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
