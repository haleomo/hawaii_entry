import 'package:flutter/material.dart';
import 'package:hawaii_entry/item_checkbox.dart';
import 'package:hawaii_entry/none_above_ckeckbox.dart';
import 'package:hawaii_entry/data/check_box_item.dart';

class AgricultureForm extends StatefulWidget {
  const AgricultureForm({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<AgricultureForm> createState() => _AgricultureFormState();
}

const double textScaleFactor = 0.75;

const String paragraph =
    "Any person who defaces this declaration form, gives false information, or fails to declare, prohibited or restricted articles in their possession, including baggage, or fails to declare these items on cargo manifests is in violation of Chapter 150A, Hawaii Revised Statutes, and may be guilty of a misdemeanor punishable, in certain instances, by a maximum penalty of \$25,000 and/or up to one year imprisonment. Intentionally smuggling a snake or other prohibited or restricted article into Hawai‘i is, in certain circumstances, a Class C felony punishable by a maximum penalty of \$200,000 and/or up to five years imprisonment. One adult member of a family may complete this declaration for other family members.";

const floraFaunaInspectionParagraph = [
  "Please submit all of the above-marked items in your possession and/or baggage for inspection to a Hawai‘i",
  "Plant Quarantine Inspector in the baggage claims area. The cargo agent will submit cargo for inspection on",
  "your behalf.",
];

String getFloraFaunaInspectionParagraph() {
  return floraFaunaInspectionParagraph.join(" ");
}

const animalQuarantineParagraph = [
  "If you are traveling with any LIVE ANIMALS, you must NOTIFY A CABIN ATTENDANT PRIOR TO DEPLANING.",
  "All live animals must be turned in to the Honolulu Airport Animal Quarantine Holding Facility by the",
  "transportation carrier, not the passenger, upon arrival.",
];

String getAnimalQuarantineParagraph() {
  return animalQuarantineParagraph.join(" ");
}

class _AgricultureFormState extends State<AgricultureForm> {
  NoneAboveCheckBox noneOfTheAbove =
      const NoneAboveCheckBox(title: 'None of the Above.', disabled: false);

  List<ItemCheckBox> liveFloraAndFaunaCheckBoxes =
      getLiveFloraAndFaunaCheckBoxes();
  List<ItemCheckBox> petsCheckBoxes = getPetsCheckBoxes();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return  Container(
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: SingleChildScrollView(
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/agFormHeader.png'),
                    ),
                    border: Border.all(color: Colors.grey)),
              ), // (1) Header (Seal, Map, Title)
              Container(
                margin: const EdgeInsets.all(2.0),
                padding: const EdgeInsets.all(3.0),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "YOU ARE REQUIRED BY STATE LAW TO FILL OUT THIS AGRICULTURAL DECLARATION FORM. ",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: paragraph,
                        style: TextStyle(
                          color: Color.fromRGBO(1, 1, 1, 1),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ), // (2) Authority & Requirement to complete form
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'A) I HAVE THE FOLLOWING ITEMS IN MY POSSESSION AND/OR BAGGAGE:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: liveFloraAndFaunaCheckBoxes,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: getFloraFaunaInspectionParagraph(),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 244, 67, 54),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'B) I HAVE THE FOLLOWING ITEMS IN MY POSSESSION AND/OR BAGGAGE:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    textAlign: TextAlign.start,
                  ),
                  Row(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: petsCheckBoxes,
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: getAnimalQuarantineParagraph(),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 244, 67, 54),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        noneOfTheAbove,
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
