import 'package:flutter/material.dart';

class StationsScreen extends StatelessWidget {
  const StationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stations = ["Allawah", "Arncliffe", "Auburn", "Bankstown", "Belmore"];

    return Scaffold(
      appBar: AppBar(title: const Text("Stations"), backgroundColor: Colors.green.shade200),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: stations.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(stations[index]),
                leading: Icon(Icons.location_on, color: Colors.green.shade200),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
