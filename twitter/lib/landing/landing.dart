import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* twitter logo */
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Image(
                    image: AssetImage('assets/logo/logo1.png'),
                    width: 150,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Happening',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'now',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Join Twitter today.',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
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
                      padding: EdgeInsets.all(28.0),
                      child: Row(
                        children: [
                          Text(
                            'Sign in with Gmail',
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
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
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage('assets/icons/apple1.png'),
                              width: 50),
                          Text(
                            'Sign Up with Apple',
                            style: TextStyle(
                                fontSize: 20,
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
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      side: const BorderSide(
                          color: Color.fromARGB(255, 135, 177, 211)),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(48.0), // Adding border radius
                      ),
                    ),
                    onPressed: _handleSignIn,
                    child: const Padding(
                      padding: EdgeInsets.all(28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Create account',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'By signing up, you agree to the ',
                        style:
                            TextStyle(color: Color.fromARGB(255, 58, 57, 57)),
                      ),
                      Text(
                        'Terms of Service ',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text(
                        'and ',
                        style:
                            TextStyle(color: Color.fromARGB(255, 58, 57, 57)),
                      ),
                      Text(
                        'Privacy',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'Policy',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text(
                        ' ,including',
                        style:
                            TextStyle(color: Color.fromARGB(255, 58, 57, 57)),
                      ),
                      Text(
                        ' Cookie Use',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
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
                      padding: EdgeInsets.all(28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
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
