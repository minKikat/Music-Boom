import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/forgetPassword': (context) => ForgetPasswordScreen(),
        '/signUp': (context) => SignUpScreen(),
      },
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage('lib/logo.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Login to your account',
                style: TextStyle(color: Colors.white, fontSize: 35),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email, color: Colors.white),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Email',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 20, 20, 20),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelStyle: const TextStyle(color: Colors.white),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextField(
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
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgetPassword');
                    },
                    child: const Text(
                      'Forget Password?',
                      style:
                          TextStyle(color: Color.fromARGB(255, 62, 200, 235)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Add your login logic here
                  },
                  label: const Text(
                    'Login',
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
                  text: "Don't have an account? ",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 62, 200, 235),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/signUp');
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

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: const Text(
          'Forget Password Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: const Text(
          'Sign Up Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
