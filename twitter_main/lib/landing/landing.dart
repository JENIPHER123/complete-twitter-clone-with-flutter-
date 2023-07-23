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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* twitter logo */
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Image(
                    image: AssetImage('assets/logo/logo1.png'),
                    width: 80,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Happening',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'now',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Join Twitter today.',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
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
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
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
                    onPressed: () {
                      Navigator.pushNamed(context, 'step1_signup');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Create account',
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'By signing up,you agree to the ',
                        style:
                            TextStyle(color: Color.fromARGB(255, 58, 57, 57)),
                      ),
                      Text(
                        'Terms of Service',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'and',
                        style:
                            TextStyle(color: Color.fromARGB(255, 58, 57, 57)),
                      ),
                      Text(
                        'Privacy',
                        style: TextStyle(color: Colors.blue),
                      ),
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
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
                const Image(
                  image: AssetImage('assets/images/landing-main.PNG'),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'About',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Help Center',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Terms of Service',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Privacy Policy',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Cookie Policy',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Accessibility',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Ads Info',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Blogs',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Status',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Careers',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Brand Resources',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Advertising',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Marketing',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Twitter for Business',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Developers',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Directory',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Text(
                      'Settings',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.copyright,
                        color: Color.fromARGB(255, 126, 126, 126)),
                    Text(
                      '2023 X Corp',
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
