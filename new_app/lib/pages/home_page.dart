import 'package:flutter/material.dart';
import 'package:new_app/pages/login_page.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        // backgroundColor: Colors.deepPurpleAccent,
        title: Text('Myapp Barr...'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Login Page"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
          },
        ),
        
      ),
    );
  }
}