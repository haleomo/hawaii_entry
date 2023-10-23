import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBody();

}


class _HomeScreenBody extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        // BoxDecoration takes the image
        decoration: BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: const AssetImage("assets/hawaiianFlag.jpeg"), fit: BoxFit.cover, colorFilter:  ColorFilter.mode(const Color.fromARGB(4, 0, 0, 0).withOpacity(0.2), BlendMode.dstATop),),
        ),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // background
                    foregroundColor: Colors.white, // foreground
                  ),
                  onPressed: () { },
                  child: const Text('Login'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // background
                    foregroundColor: Colors.white, // foreground
                  ),
                  onPressed: () { },
                  child: const Text('Register'),
                ),
          ],
        ),),
      );
  }

}