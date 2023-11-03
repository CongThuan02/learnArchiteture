import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:learn_clearn_code/core/constants/my_colors.dart';
import 'package:learn_clearn_code/presentation/widgets/inputtextformfield.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 61,
            ),
            Center(
              child: Image.asset(
                "assets/images/journo_logo.png",
                width: 139,
                height: 42,
              ),
            ),
            const SizedBox(
              height: 93,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 87,
                    ),
                    const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: MyColor.primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    InputTextFormField(
                        name: "Email",
                        iconPrefix: Icons.email_outlined,
                        onChange: () {},
                        suffixIcon: Icons.verified_outlined),
                    const SizedBox(
                      height: 24,
                    ),
                    InputTextFormField(
                      name: "Password",
                      isPassword: isPassword,
                      iconPrefix: Icons.lock_outline,
                      onChange: (value) {},
                      suffixIcon: Icons.remove_red_eye_outlined,
                      onTap: () {
                        // setState(() {
                        //   // isPassword = !isPassword;
                        // });
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              fillColor: MaterialStateProperty.resolveWith(
                                  (Set states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return MyColor.primaryColor;
                                }
                                return MyColor.primaryColor;
                              }),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                            ),
                            const Text(
                              "Remember me",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: MyColor.primaryColor,
                              ),
                            )
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: MyColor.primaryColor,
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 50),
                            backgroundColor: MyColor.primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Don’t have an account",
                            style: TextStyle(
                              color: MyColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: MyColor.primaryColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
