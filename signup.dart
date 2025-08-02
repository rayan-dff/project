import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'docsignin.dart';

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formKey = GlobalKey<FormState>();

  var passname = TextEditingController();
  var passlastname = TextEditingController();
  var passemail = TextEditingController();
  var passnumber = TextEditingController();
  var passpassword = TextEditingController();

  // Error message state variables
  String? nameError;
  String? lastnameError;
  String? emailError;
  String? numberError;
  String? passwordError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 245,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 53,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/WhatsApp Image 2025-07-30 at 17.41.59_896b0069-fotor-bg-remover-2025073141824.png',
                          fit: BoxFit.cover,
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'BACK & BODY',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 2.8,
                              color: Colors.white,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'PHYSICARE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              letterSpacing: 3.6,
                              color: Colors.white,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25, top: 20),
                child: Container(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // First Name Field
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 8,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: passname,
                                  decoration: InputDecoration(
                                    hintText: 'First Name',
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    prefixIcon: Icon(Icons.person, color: Colors.blueAccent),
                                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                    errorStyle: TextStyle(height: 0), // Hide default error
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      setState(() {
                                        nameError = 'Please enter your name';
                                      });
                                      return '';
                                    }
                                    setState(() {
                                      nameError = null;
                                    });
                                    return null;
                                  },
                                ),
                              ),
                              if (nameError != null)
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 12),
                                  child: Text(
                                    nameError!,
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      // Last Name Field
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 8,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: passlastname,
                                  decoration: InputDecoration(
                                    hintText: 'Last Name',
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    prefixIcon: Icon(Icons.person, color: Colors.blueAccent),
                                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                    errorStyle: TextStyle(height: 0), // Hide default error
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      setState(() {
                                        lastnameError = 'Please enter your lastname';
                                      });
                                      return '';
                                    }
                                    setState(() {
                                      lastnameError = null;
                                    });
                                    return null;
                                  },
                                ),
                              ),
                              if (lastnameError != null)
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, left: 12),
                                  child: Text(
                                    lastnameError!,
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Email Field
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 15),
                child: Container(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: passemail,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
                            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            errorStyle: TextStyle(height: 0), // Hide default error
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                emailError = 'Please enter your email';
                              });
                              return '';
                            }
                            setState(() {
                              emailError = null;
                            });
                            return null;
                          },
                        ),
                      ),
                      if (emailError != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 12),
                          child: Text(
                            emailError!,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              // Phone Number Field
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 15),
                child: Container(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: passnumber,
                          decoration: InputDecoration(
                            hintText: 'Phone number',
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            prefixIcon: Icon(Icons.phone, color: Colors.blueAccent),
                            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            errorStyle: TextStyle(height: 0), // Hide default error
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                numberError = 'Please enter your phone number';
                              });
                              return '';
                            }
                            setState(() {
                              numberError = null;
                            });
                            return null;
                          },
                        ),
                      ),
                      if (numberError != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 12),
                          child: Text(
                            numberError!,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              // Password Field
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 15),
                child: Container(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: passpassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            prefixIcon: Icon(Icons.lock, color: Colors.blueAccent),
                            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            errorStyle: TextStyle(height: 0), // Hide default error
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                passwordError = 'Please enter your password';
                              });
                              return '';
                            }
                            setState(() {
                              passwordError = null;
                            });
                            return null;
                          },
                        ),
                      ),
                      if (passwordError != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 12),
                          child: Text(
                            passwordError!,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 346,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        String username = passname.text.toString();
                        String email = passemail.text.toString();
                        String number = passnumber.text.toString();
                        String password = passpassword.text.toString();
                        String lastname = passlastname.text.toString();
                        if (password.length > 8) {
                          Fluttertoast.showToast(
                            msg: "Enter password under 8 characters",
                            toastLength: Toast.LENGTH_SHORT,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            gravity: ToastGravity.BOTTOM,
                          );
                        } else {
                          Fluttertoast.showToast(
                            msg: "Form Submitted Successfully!",
                            toastLength: Toast.LENGTH_SHORT,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 5,
                            fontSize: 10,
                          );

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Form Submitted Successfully!'),
                              backgroundColor: Colors.green,
                            ),
                          );
                          print(
                            'Name :$username ,Email : $email ,PhoneNumber :$number ,Password :$password,lastname :$lastname',
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 148),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'ALREADY HAVE AN ACCOUNT?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => dosignin()),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}