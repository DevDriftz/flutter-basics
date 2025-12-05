import 'package:flutter/material.dart';
import 'package:new_app/pages/home_page.dart';

void main(List<String> args) {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'assets/images/login_image.png',
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 40),

          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 32.0, vertical: 36),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),

                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                  },
                  child: const Text("Login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                ),

                const SizedBox(height: 30),

                // ⭐ NO-RIPPLE CIRCLE IMAGE BUTTON ADDED HERE
                GestureDetector(
                  onTap: () {
                    print("Circle image tapped");
                  },
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/profile_icon.png", // <-- your image here
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
