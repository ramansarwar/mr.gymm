import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
          backgroundColor: Colors.transparent, // Transparent background
          elevation: 0, // Remove shadow
          leading: IconButton(
            icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white, size: 30,),// Back arrow icon
            onPressed: () {
              Navigator.of(context).pop(); // Pops the current screen from the navigation stack
            },
          ),
        ),
      backgroundColor: Colors.transparent,
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

                            Padding(padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(60, 0, 60, 20),
                                  child: TextField(
                                    style: TextStyle(color: Colors.white), // Set text color to black
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                        color: Colors.white
                                      ),

                                      hintStyle: TextStyle(color: Colors.white), // Set hint text color
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white, width: 2), // Bottom border color
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.teal, width: 2), // Bottom border color when focused
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
                                  child: TextField(
                                    style: TextStyle(color: Colors.white), // Set text color to black
                                    decoration: InputDecoration(
                                      labelText: "Passoword",

                                      labelStyle: TextStyle(
                                          color: Colors.white
                                      ),

                                      hintStyle: TextStyle(color: Colors.white), // Set hint text color
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white, width: 2), // Bottom border color
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.teal, width: 2), // Bottom border color when focused
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            ),)


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
                        // google login





                        // Start Button
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
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
                                // Add your onPressed code here
                              },
                              child: Text(
                                'LogIn',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
    SizedBox(height: 20), // Add some space between the button and icons
    Row(
    mainAxisAlignment: MainAxisAlignment.center, // Center the icons horizontally
    children: [
    IconButton(
    icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white, size: 40,),
    onPressed: () {
    // Add your onPressed code for Home
    },
    ),
    SizedBox(width: 30), // Add space between icons
    IconButton(
    icon:FaIcon(FontAwesomeIcons.apple, color: Colors.white, size: 40,),
    onPressed: () {
    // Add your onPressed code for Search
    },
    ),
    SizedBox(
        width: 30), // Add space between icons
    IconButton(
    icon: FaIcon(FontAwesomeIcons.google, color: Colors.white, size: 30,),
    onPressed: () {
    // Add your onPressed code for Settings
    },)],
                    ),



                  ])))]));
  }
}





















// import 'package:flutter/material.dart';
//
// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Log In'),
//         backgroundColor: Colors.teal,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(labelText: 'Username or Email'),
//             ),
//             TextField(
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('Log In'),
//             ),
//             SizedBox(height: 20),
//             Text('Or sign in with'),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.apple),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.email),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.facebook),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
