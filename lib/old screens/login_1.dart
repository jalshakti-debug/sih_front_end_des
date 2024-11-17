import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sih_ui_des/old%20screens/register_1.dart';

class Log1 extends StatefulWidget {
  const Log1({super.key});

  @override
  State<Log1> createState() => _Log1State();
}

class _Log1State extends State<Log1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/mainLogo.png'),
                  ),
                ),
              ),
              Text(
                'Welcome',
                style: GoogleFonts.sansita(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Text(
                'Login to Continue',
                style: GoogleFonts.playfairDisplay(
                    fontSize: 15, fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(width: 0.2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 0.2)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 8, bottom: 16),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(width: 0.2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 0.2)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {
                    null;
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.login),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New User ?'),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStatePropertyAll(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text('CREATE ACCOUNT'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
