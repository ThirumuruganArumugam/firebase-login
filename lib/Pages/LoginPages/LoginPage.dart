import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final TextEditingController _email = TextEditingController();
final TextEditingController _password = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
  }

  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _email.clear();
    _password.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color(0xff0D031B),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          height: 45,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 5,
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xffC4C4C4),
                          radius: 5,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 95,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'cousine',
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Column(
                      children: [
                        TextFormField(
                          controller: _email,
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          decoration: InputDecoration(
                              label: const Text(
                                "Email-ID",
                                style: TextStyle(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32))),
                        ),
                        TextFormField(
                          controller: _password,
                          obscureText: _isVisible ? false : true,
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.visiblePassword,
                          autofocus: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  color: Colors.white,
                                  onPressed: () => updateStatus(),
                                  icon: Icon(_isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              label: const Text(
                                "Password",
                                style: TextStyle(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32))),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: Colors.black)))),
                            onPressed: () {
                              FirebaseAuth.instance.signInWithEmailAndPassword(
                                  email: _email.text.trim(),
                                  password: _password.text.trim());
                            },
                            child: const Text("Login")),
                        const SizedBox(
                          width: 50,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: Colors.black)))),
                            onPressed: () {
                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _email.text.trim(),
                                      password: _password.text.trim());
                            },
                            child: const Text("Sign-Up"))
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              "Have Account?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.412,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Registration",
                              style: TextStyle(
                                color: Color(0xff34A853),
                                fontSize: 14.412,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              "Or",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.412,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 29,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.blue),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/telegram.png",
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/google.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.blue),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Image.asset(
                                    "lib/Helpers/Resources/Asset/Images/facebook.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                )),
                          ]),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
