import 'package:flutter/material.dart';

void main() {
  runApp(const Demo05());
}

class Demo05 extends StatelessWidget {
  const Demo05({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Quiz Templete")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 365.0, // Adjust the width as needed
                    height: 170.0, // Adjust the height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the radius as needed
                      border: Border.all(
                        color: const Color.fromARGB(255, 2, 48, 75), // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Question',
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0), // Text color
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Option 1"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Option 1"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 22.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Option 1"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Option 1"),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Back"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
