import 'package:flutter/material.dart';
import 'package:hawaii_entry/data/airline_cruiseline_info.dart';

class TravelInformationScreen extends StatefulWidget {
  const TravelInformationScreen({super.key});

  @override
  State<StatefulWidget> createState() => _TravelInformationScreen();
}

class _TravelInformationScreen extends State<TravelInformationScreen> {
  String? airlineDropdownValue;
  String? cruiselineDropdownValue;

  @override
  void initState() {
    super.initState();
    airlineDropdownValue = airlineNames.first;
    cruiselineDropdownValue = cruiseLineNames.first;
  }

  @override
  Widget build(Object context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(9, 138, 80, 150),
              border: Border.all(
                width: 1,
                color: Color.fromARGB(255, 197, 163, 237),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                DropdownButton<String>(
                  value: airlineDropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      airlineDropdownValue = value!;
                    });
                  },
                  items: airlineNames
                      .map<DropdownMenuItem<String>>((String airlineName) {
                    return DropdownMenuItem<String>(
                      value: airlineName,
                      child: Text(
                        airlineName,
                      ),
                    );
                  }).toList(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter Flight Number',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(9, 138, 80, 150),
              border: Border.all(
                width: 1,
                color: Color.fromARGB(255, 197, 163, 237),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                DropdownButton<String>(
                  value: cruiselineDropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      cruiselineDropdownValue = value!;
                    });
                  },
                  items: cruiseLineNames
                      .map<DropdownMenuItem<String>>((String cruiseLineName) {
                    return DropdownMenuItem<String>(
                      value: cruiseLineName,
                      child: Text(
                        cruiseLineName,
                      ),
                    );
                  }).toList(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter Ship Name',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
