import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:goldsikka/contant/custom_button.dart';
import 'package:goldsikka/contant/validator.dart';
import '../contant/input_form_fields.dart';
import '../services/auth.dart';
import 'otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  String verificationIdFinal = "";
  bool wait = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/001.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Form(
            key: _formkey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/gold_logo 1.png"),
                  const SizedBox(
                    height: 40,
                  ),
                  FormInputFields(
                    size: size,
                    controller: _controller,
                    validator: phoneNumberValidator,
                    textInputType: TextInputType.phone,
                    hintText: "Enter contact number",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    "Login",
                    () async {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => OTPScreen(_controller.text)));
                      }
                    },
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    "Don’t have an account ?",
                    style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text("REGISTER NOW",
                          style: TextStyle(
                              color: Color(0xFFDBB242),
                              fontSize: 12,
                              fontFamily: "Quicksand")))
                ]),
          ),
        ),
      ),
    );
  }

  void setData(String verificationId) {
    setState(() {
      verificationIdFinal = verificationId;
    });
  }
}
