import 'package:flutter/material.dart';

class StoreLocatorScreen extends StatelessWidget {
  const StoreLocatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              const SizedBox(height: 64),
              const Text('Help Us Help You'),
              const SizedBox(height: 25),
              const Text('It seems as this is your first time using our app,'
                  ' please enter your location so we can filter our results and stock accordingly to your local store.'
              '\n \n If you choose to skip, you can change your'
                  'location at any time in your account settings.'),
              const SizedBox(height: 25),
              const TextField(
                decoration: InputDecoration(hintText: 'State',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(hintText: 'City',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 18),
              Center(
                child: Container(
                    height: 56,
                    width: 335,
                    color: const Color(0XFF5ABD8C),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
