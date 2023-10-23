import 'package:flutter/material.dart';
import 'package:hawaii_entry/agriculture_form.dart';
import 'package:hawaii_entry/home_screen_body.dart';
import 'package:hawaii_entry/travel_information_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  Widget _currentScreen  = const HomeScreenBody();

  @override
  State<StatefulWidget> createState() => _HomeScreen();


  
}



class _HomeScreen extends State<HomeScreen> {

  @override
  void initState() {
    widget._currentScreen = const HomeScreenBody();
    super.initState();
  }

  void showAgricultureForm(int index) {
  setState(() {
    if (index == 0) {
      widget._currentScreen = const AgricultureForm(title: '');
    } else if (index == 1) {
      widget._currentScreen = const Text("Tourism Form");
    } else if (index == 2) {
      widget._currentScreen = const Text("Hawaii Map and Customs");
    }
      
    });  
  }

  void showFlightCruiseResistrationForm() {
    setState(() {widget._currentScreen = const TravelInformationScreen();});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("State of Hawai'i"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
          leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ), 
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.manage_accounts,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.airplane_ticket,
              color: Colors.white,
            ),
            onPressed: () {
              showFlightCruiseResistrationForm();
            },
          ),
        ],
      ),
      body: widget._currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.agriculture),
            label: 'Agriculture',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.beach_access),
            label: 'Travel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Hawaii',
          ),
        ],
        onTap: (int index) {
          showAgricultureForm(index);
        },
      ),
    );
  }
}
