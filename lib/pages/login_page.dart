import 'package:flutter/material.dart';
import 'package:myyy_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;
  bool _obscureText = true;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
                height: 300.0,
              ),
              const SizedBox(
                height: 10.0,
                //child: Container(color: Colors.red),
              ),
              Text(
                '⁅ Welcome $name⁆',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 76, 0, 255),
                  //fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationColor: Color.fromARGB(255, 85, 85, 230),
                ),
              ),
              SizedBox(
                height: 0.0,
                child:
                    Container(color: const Color.fromARGB(255, 30, 172, 233)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 50.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter Username",
                          labelText: "Username"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username Cannot Be Empty";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: _obscureText,
                      //obscureText: !_passwordvisible,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Enter Password",
                        labelText: "Password",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(_obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Cannot Be Empty";
                        } else if (value.length < 6) {
                          return "Password Length Should Be Atleast 6";
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        // onLongPress: () {
                        //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                        // },
                        onDoubleTap: () {
                          Navigator.pushNamed(context, MyRoutes.loginRoute);
                        },
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 2),
                          width: changeButton ? 50 : 300.0,
                          height: 50.0,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,
                          //   // shape:
                          //   //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                          //   borderRadius:
                          //       BorderRadius.circular(changeButton ? 50 : 8),
                          // ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
