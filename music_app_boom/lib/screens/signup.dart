import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:music_app_boom/screens/login.dart';
import 'package:music_app_boom/service/auth_services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (BuildContext context) => const Login()),
            );
          },
        ),
      ),
      body: Container(
        color: Colors.black,
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
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2Flogo.png?alt=media&token=c2a660d6-39cd-4c55-adf0-fa76a2c4da84'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Create an account',
                style: TextStyle(color: Colors.white, fontSize: 35),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Email',
                  filled: true,
                  fillColor: Color.fromARGB(255, 20, 20, 20),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, color: Colors.white),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Password',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 20, 20, 20),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelStyle: const TextStyle(color: Colors.white),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                  ),
                ),
                obscureText: _isObscure,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    await _authService.registerWithEmailPassword(
                      context,
                      _emailController.text,
                      _passwordController.text,
                    );
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Login()),
                    );
                  },
                  label: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 22),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 62, 200, 235),
                    foregroundColor: Colors.white,
                    fixedSize: const Size.fromHeight(50),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  children: [
                    TextSpan(
                      text: 'Login',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 62, 200, 235),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Login()),
                          );
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
