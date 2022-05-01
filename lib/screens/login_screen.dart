import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/screens/screens.dart';
//import 'package:fluttertoast/fluttertoast.dart';


//Login
class LoginScreen extends StatefulWidget{
  const LoginScreen({Key? key}) : super(key:key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static Future<User?> loginUsingEmailPassword(
      {required String email, required String password, required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No user found for that email");
      }
    }
    return user;
  }


  @override
   Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    scrollable: true;
    return Padding(
      padding: const EdgeInsets.all(16.0),

      child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text(
            //   "Movie App UI",
            //   style: TextStyle(
            //     color: Colors.red,
            //     fontSize: 28.0,
            //     fontWeight: FontWeight.bold,
            //     fontStyle: FontStyle.italic,
            //   ),
            // ),
            const SizedBox(
              height: 67.0,
            ),
            new Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('assets/images/netflix_logo0.png')
                    )
                )
            ),
            const SizedBox(
              height: 37.0,
            ),
            const Text(
              "Login to your App",
              style: TextStyle(
                color: Colors.red, fontSize: 40.0, fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 37.0,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "User Email",
                hintStyle: TextStyle(color: Colors.red),
                prefixIcon: Icon(Icons.mail, color: Colors.red),
              ),
            ),
            const SizedBox(height: 26.0,
            ),
            TextField(
              controller: _passwordController,
              style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "User Password",
                hintStyle: TextStyle(color: Colors.red),
                prefixIcon: Icon(Icons.lock, color: Colors.red),
              ),
            ),
            const SizedBox(height: 42.0,
            ),
            const Text(
              "Don't Remember your Password?",
              style: TextStyle(color: Colors.red),
            ),
            const SizedBox(
              height: 88.0,
            ),
            Container(
              width: double.infinity,
              child: RawMaterialButton(fillColor: const Color(0x55FF0000),
                elevation: 0.0,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)
                ),
                onPressed: () async {
                  User? user = await loginUsingEmailPassword(
                      email: _emailController.text,
                      password: _passwordController.text context: context);
                  print(user);
                  if (user != null) {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => NavScreen()));
                  }
                  else
                    {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Wrong Login Credentials !! \n\t Please retry")));
                    }
                },
                child: const Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

