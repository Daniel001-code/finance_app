import 'package:finance_app/Color_palettes/palettes.dart';
import 'package:finance_app/screens/product_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isMale = true;
  bool isSignup = true;
  bool isRemenberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 213, 225, 228),
          body: Stack(
            children: [
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('image/flower_nature.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.withOpacity(0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: 'Welcome to  ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 255, 0, 0)),
                                  children: [
                                    TextSpan(
                                      text: 'Dantech design center,',
                                      style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ]),
                            ),
                            Text(
                              'Where beautiful House designs exist...',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
              Positioned(
                top: 200,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: isSignup ? 430 : 250,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSignup = false;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        'LOGIN',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: isSignup
                                              ? Colors.grey
                                              : Colors.black,
                                        ),
                                      ),
                                      Container(
                                        height: 5,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: isSignup
                                              ? Colors.grey
                                              : Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSignup = true;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        'SIGNUP',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: isSignup
                                              ? Colors.black
                                              : Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        height: 5,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: isSignup
                                              ? Colors.blue
                                              : Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          if (isSignup) SignupSection(),
                          if (!isSignup) Login_Section(),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: isSignup
                      ? MediaQuery.of(context).size.height - 174
                      : MediaQuery.of(context).size.height - 350,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  )),
              Positioned(
                top: isSignup
                    ? MediaQuery.of(context).size.height - 160
                    : MediaQuery.of(context).size.height - 336,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Products()));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 40,
                    ),
                  ),
                ),
              ),
              if (isSignup)
                Positioned(
                    top: MediaQuery.of(context).size.height - 100,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 75,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(),
                      child: Column(
                        children: [
                          Text(
                            'Or signup with',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          if (isSignup) SignUpgoogleOrfacebook(),
                        ],
                      ),
                    ))
            ],
          )),
    );
  }

  Widget Login_Section() {
    return Container(
      child: Column(children: [
        TextFieldBox(Icons.person_2_outlined, 'User Name', false, true),
        TextFieldBox(Icons.lock_clock_outlined, '**********', true, false),
        Row(children: [
          Checkbox(
            value: isRemenberMe,
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                isRemenberMe = !isRemenberMe;
              });
            },
          ),
          Text(
            'Remember me',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Forgot password?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ]),
      ]),
    );
  }

  Container SignupSection() {
    return Container(
      child: Column(
        children: [
          TextFieldBox(Icons.person_2_outlined, 'User Name', false, false),
          TextFieldBox(Icons.mail_outline, 'email address', false, false),
          TextFieldBox(Icons.lock_outline, 'Enter password', true, false),
          TextFieldBox(Icons.lock_outline, 'Confirm password', true, false),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: isMale
                              ? Colors.grey
                              : Color.fromARGB(255, 241, 232, 232),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.man_2_outlined,
                          color: isMale ? Colors.black : Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: isMale
                              ? Color.fromARGB(255, 241, 232, 232)
                              : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.woman_2_outlined,
                          color: isMale ? Colors.grey : Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 5,
            ),
            child: Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "By pressing 'submit', you agree to our ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: 'terms and conditions',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget TextFieldBox(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            ),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
      ),
    );
  }
}

class SignUpgoogleOrfacebook extends StatelessWidget {
  const SignUpgoogleOrfacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(255, 30, 134, 219),
              image: DecorationImage(
                image: AssetImage('image/Facebook_logo.png'),
                fit: BoxFit.fill,
              )),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  'image/Google_logo.jpg',
                ),
                fit: BoxFit.fill,
              )),
        )
      ],
    );
  }
}
