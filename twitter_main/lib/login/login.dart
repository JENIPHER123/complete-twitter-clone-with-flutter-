import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  /* creating the google sign in instance */
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  /* defining the button to handle the button tap and initiate sign in */
  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
      // Add your logic to handle the successful sign-in here.
    } catch (error) {
      print('Error during sign in: $error');
      // Add your error handling logic here if necessary.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* twitter logo */
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: const Icon(Icons.close, color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: Image(
                          image: AssetImage('assets/logo/logo1.png'),
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Sign In to Twitter.',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 239, 241, 243),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 135, 177, 211)),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(48.0), // Adding border radius
                      ),
                    ),
                    onPressed: _handleSignIn,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/img5.jpg'),
                                backgroundColor:
                                    Color.fromARGB(255, 102, 56, 56),
                                radius: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sign in As Jenipher',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 53, 52, 52)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'jeniperkuki@gmail.com',
                                        style: TextStyle(color: Colors.black38),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color.fromARGB(218, 27, 27, 27),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/img5.jpg'),
                            backgroundColor: Color.fromARGB(255, 102, 56, 56),
                            radius: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                /* Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 239, 241, 243),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 135, 177, 211)),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(48.0), // Adding border radius
                      ),
                    ),
                    onPressed: _handleSignIn,
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign Up with Google',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 53, 53, 53)),
                          ),
                          SizedBox(width: 5),
                          Image(
                              image: AssetImage('assets/icons/google1.png'),
                              width: 23),
                        ],
                      ),
                    ),
                  ),
                ), */
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 239, 241, 243),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 135, 177, 211)),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(48.0), // Adding border radius
                      ),
                    ),
                    onPressed: _handleSignIn,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage('assets/icons/apple1.png'),
                              width: 35),
                          Text(
                            'Sign Up with Apple',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 53, 53, 53)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'or',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Phone, Email, or Username',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: const BorderSide(
                          color: Color.fromARGB(255, 135, 177, 211)),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(48.0), // Adding border radius
                      ),
                    ),
                    onPressed: _handleSignIn,
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 239, 241, 243),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 135, 177, 211)),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(48.0), // Adding border radius
                      ),
                    ),
                    onPressed: /*  _handleSignIn */ () {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 3, 0, 0),
                  child: Row(
                    children: [
                      const Text(
                        "Don't have an account?",
                        style:
                            TextStyle(color: Color.fromARGB(255, 58, 57, 57)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
