import 'package:flutter/material.dart';

class trains_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
      Expanded(
      child: Stack(
      children: [
        Image.asset(
        'lib/images/map1.png', // Replace with your train image
        width: 450,
        height: 900,
        fit: BoxFit.cover,
      ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("From", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("To", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Chatswood", style: TextStyle(fontSize: 16)),
                      Text("Central Station", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const Divider(),
                  _trainOption("Gordon Rail", "Train", "Coming in 1 minute", Colors.green),
                  const SizedBox(height: 8),
                  _trainOption("Sydney Hashem", "Metro", "Arrival in 31 minutes", Colors.red),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ],),);
  }

  Widget _trainOption(String name, String type, String status, Color statusColor) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const Icon(Icons.train, color: Colors.black),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(type, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Icon(Icons.circle, color: statusColor, size: 10),
              const SizedBox(width: 5),
              Text(status, style: TextStyle(fontSize: 14, color: statusColor)),
            ],
          ),
          const SizedBox(width: 10),
          const Icon(Icons.arrow_forward_ios, size: 18),
        ],
      ),
    );
  }
}
