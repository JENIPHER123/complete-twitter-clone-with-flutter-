import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Step1Signup extends StatefulWidget {
  const Step1Signup({super.key});

  @override
  State<Step1Signup> createState() => _Step1SignupState();
}

class _Step1SignupState extends State<Step1Signup> {
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

// Initial Selected Value
  String dropdownvalue_month = 'Month';
  String dropdownvalue_day = 'Day';
  String dropdownvalue_year = 'Year';

  // List of items in our dropdown menu
  var months = [
    'Month',
    'Day',
    'Year',
    'Item 4',
    'Item 5',
  ];
  var days = [
    'Month',
    'Day',
    'Year',
    'Item 4',
    'Item 5',
  ];
  var years = [
    'Years',
    '20',
    'Year',
    'Item 4',
    'Item 5',
  ];
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
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            'Step 1 of 5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Create your account',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Phone, Email, or Username',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 3, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Date of Birth",
                        style: TextStyle(
                            color: Color.fromARGB(255, 58, 57, 57),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                        "This will not be shown publicly.Confirm your own age, even if this account is for business, a pet or something else.",
                        style: TextStyle(
                          color: Color.fromARGB(255, 104, 103, 103),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue_month,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: months.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue_month = newValue!;
                        });
                      },
                    ),
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue_day,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: days.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue_day = newValue!;
                        });
                      },
                    ),
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue_year,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: years.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue_year = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
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
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
