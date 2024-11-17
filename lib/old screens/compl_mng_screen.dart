import 'package:flutter/material.dart';

class ComplMngScreen extends StatefulWidget {
  const ComplMngScreen({super.key});

  @override
  State<ComplMngScreen> createState() => _ComplMngScreenState();
}

class _ComplMngScreenState extends State<ComplMngScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Do you have any trouble?',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Tell Us!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DashTile(),
                SizedBox(
                  width: 6,
                ),
                DashTile(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DashTile(),
                SizedBox(
                  width: 6,
                ),
                DashTile(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DashTile(),
                SizedBox(
                  width: 6,
                ),
                DashTile(),
              ],
            ),
            SizedBox(height: 80,),
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Track Complaints',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashTile extends StatelessWidget {
  const DashTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.lightBlue[50],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
          child: Column(
            children: [
              Icon(
                Icons.accessibility_new,
                size: 60,
              ),
              SizedBox(
                height: 16,
              ),
              Text('Opt Name')
            ],
          ),
        ),
      ),
    );
  }
}
