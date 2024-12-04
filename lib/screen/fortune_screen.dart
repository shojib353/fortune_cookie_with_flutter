import 'dart:math';

import 'package:flutter/material.dart';

class FortuneScreen extends StatefulWidget {
  const FortuneScreen({super.key});

  @override
  State<FortuneScreen> createState() => _FortuneScreenState();
}

class _FortuneScreenState extends State<FortuneScreen> {




   List<String> fortunes = [
    "You will have a great day!",
    "A surprise is waiting for you.",
    "Success is on your horizon.",
    "Expect the unexpected.",
    "Good news is coming your way.",
    "Today is your lucky day.",
    "Your efforts will soon be rewarded.",
    "Believe in yourself, great things are coming.",
    "Happiness will find you in unexpected places.",
    "You are about to start a new and exciting journey.",
    "A positive attitude will bring great rewards.",
    "Good fortune is on its way to you.",
    "You will be surrounded by happiness soon.",
    "A new opportunity will soon come your way.",
    "An exciting adventure awaits you.",
    "You will overcome all obstacles in your path.",
    "Expect a gift from an unexpected source.",
    "Your dreams are about to come true.",
    "A new friendship will bring joy to your life.",
    "Your future is bright, keep moving forward.",
    "A major breakthrough is on the horizon.",
    "You are about to receive good news.",
    "A peaceful and prosperous time is ahead.",
    "Your hard work will soon pay off.",
    "The universe is aligning in your favor.",
    "You will be rewarded for your kindness.",
    "A great opportunity is knocking at your door.",
    "The path you’ve chosen will lead to success.",
    "New beginnings are on the way for you.",
    "A financial windfall is in your future.",
    "You will find joy in the little things today."
  ];
  int counter = 0;
  String fortuneText = "Click the icon to know your fortune";


  String cal_fortune() {
    Random random = Random();
    int randomIndex = random.nextInt(fortunes.length);
    print(randomIndex);
    return fortunes[randomIndex];
  }

  void updateFortune() {
    setState(() {
      fortuneText = cal_fortune();
      counter++; //use for count click optionaly
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF5722),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "FORTUNE COOKIE",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    letterSpacing: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    children:[ 
                      
                      Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(

                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:  Text(
                        fortuneText,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                      ElevatedButton(
                        onPressed: updateFortune,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: const EdgeInsets.all(15),

                        ),
                        child:Image.asset(
                          'assets/images/fortune-cookie.png',
                          width: 150,
                          height: 150,
                        ),
                      )
                 ] ),
                ),
              ),
              SizedBox(height: 20),


            ],
          ),
        ),
      ),
    );
  }
}
