import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/login&singup/start_pages/gender.dart';
import 'login_screen.dart';
import 'start_pages/gender.dart';

class Welcom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(
            children: [
              // Background Image or Color
              Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'lib/assets/images/background.jpg'), // Path to your image
                      fit: BoxFit.cover, // Ensures the image covers the entire screen
                    ),
                  ),
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Welcome',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 5.0,
                                    color: Colors.black,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 25),
                          ]
                      )
                  )
              ),


              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(

                    height: MediaQuery.of(context).size.height /2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [

                          Colors.transparent,
                          Colors.teal,
                        ],

                      ),
                    ),
                    child:Column(

                      children: [
                        SizedBox(height: 200),
                        // Start Button
                        Container(
                          margin: EdgeInsets.all(20),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.teal.shade900, backgroundColor: Colors.white, // Text color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 16),

                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Gender()),
                                );
                              },
                              child: Text(
                                'Start',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 10), // Spacing between buttons

                        // Login Button
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text(
                            'login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                            ),
                          ),

                        )],
                    ),


                  ))]));
  }
}
