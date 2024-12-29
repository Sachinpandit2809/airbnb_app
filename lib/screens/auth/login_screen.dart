import 'package:airbnb_app/utils.dart/ext.dart';
import 'package:airbnb_app/utils.dart/styles/k_text_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Text(
              'Login Screen or sign up',
              style: KTextStyle.k_18,
            )),
            const Divider(
              color: Colors.black26,
            ),
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Welcome to Airbnb",
                  style: KTextStyle.k_24,
                )),
            // 16.heightBox,
            // for phone number field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: phoneNumberWidget(size: size),
            ),
            10.heightBox,
            RichText(
                text: TextSpan(
                    text:
                        "we will call or text you to conferm your number. Standard message and data rates apply.",
                    style: KTextStyle.k_14,
                    children: [
                  TextSpan(
                    text: "Privacy Policy",
                    style: KTextStyle.k_14.copyWith(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  )
                ])),
          ],
        )),
      ),
    );
  }
}

class phoneNumberWidget extends StatelessWidget {
  const phoneNumberWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: 140,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(10)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Country/Region", style: KTextStyle.k_12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("India(+916249)", style: KTextStyle.k_16),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down_sharp, size: 30)
                    ],
                  )
                ],
              ),
            ),
            const Divider(color: Colors.black26),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10, top: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your phone number"),
              ),
            )
          ],
        ));
  }
}
