import 'package:flutter/material.dart';
import 'package:noviindus/presentation/widgets/input_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/login_bg.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: height * 0.050,
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          const AssetImage("assets/images/logo.png"),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: height * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: height * 0.02),
                      Text(
                        "Login Or Register To Book\n Your Appointments",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: height * 0.03,
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 25),
                        child: InputTileWidget(
                          tileName: "Email",
                          hintText: "Enter your email",
                        ),
                      ),
                      const SizedBox(height: 10),
                      const InputTileWidget(
                        tileName: "Password",
                        hintText: "Enter Password",
                      ),
                      SizedBox(height: height * 0.075),
                      Container(
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.green[900],
                          borderRadius: BorderRadius.circular(height * 0.01),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.02,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: height * 0.03),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: RichText(
                              text: TextSpan(
                                text:
                                    'By creating or logging into an account you are agreeing\n with our ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.015,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text:
                                        'Terms and Conditions and Privacy Policy',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
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
    );
  }
}
