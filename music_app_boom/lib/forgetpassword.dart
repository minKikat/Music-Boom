import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set AppBar background color to black
      ),
      body: Container(
        color: Colors.black, // Set the background color to black
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage('lib/logo.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30), // Increased space above the title
              const Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.white, fontSize: 35),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove border color
                  ),
                  labelText: 'Email',
                  filled: true,
                  fillColor: Color.fromARGB(
                      255, 20, 20, 20), // Set background color to dark grey
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove border color
                  ),
                  labelStyle: TextStyle(
                      color: Colors.white), // Change the label color to white
                ),
                style: TextStyle(
                    color: Colors.white), // Change text color to white
              ),
              const SizedBox(
                  height: 20), // Increased space between Email and Password
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, color: Colors.white),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove border color
                  ),
                  labelText: 'Password',
                  filled: true,
                  fillColor: const Color.fromARGB(
                      255, 20, 20, 20), // Set background color to dark grey
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove border color
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove border color
                  ),
                  labelStyle: const TextStyle(
                      color: Colors.white), // Change the label color to white
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure; // Toggle password visibility
                      });
                    },
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                  ),
                ),
                obscureText: _isObscure,
                style: const TextStyle(
                    color: Colors.white), // Change text color to white
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, color: Colors.white),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove border color
                  ),
                  labelText: 'Confirm Password',
                  filled: true,
                  fillColor: const Color.fromARGB(
                      255, 20, 20, 20), // Set background color to dark grey
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove border color
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove border color
                  ),
                  labelStyle: const TextStyle(
                      color: Colors.white), // Change the label color to white
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure; // Toggle password visibility
                      });
                    },
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                  ),
                ),
                obscureText: _isObscure,
                style: const TextStyle(
                    color: Colors.white), // Change text color to white
              ),
              const SizedBox(height: 23),
              SizedBox(
                width:
                    double.infinity, // Make the button width same as TextField
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Add your login logic here
                  },
                  label: const Text(
                    'Login',
                    style: TextStyle(fontSize: 22), // Increase font size
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 62, 200, 235), // Change to your preferred color
                    foregroundColor:
                        Colors.white, // Change the text color to white
                    fixedSize: const Size.fromHeight(50), // Adjust button height
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
