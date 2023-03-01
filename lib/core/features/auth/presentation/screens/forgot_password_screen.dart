import 'package:flutter/material.dart';

// TODO: Make this Widget lean.
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  static const routeName = '/forgot-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 200,
                color: Colors.red,
              )
              // Expanded(
              //   flex: 60,
              //   child: Container(
              //     color: Colors.red,
              //   ),
              // ),
              // Expanded(
              //   flex: 30,
              //   child: Container(
              //     color: Colors.green,
              //   ),
              // ),
              // Expanded(
              //   flex: 10,
              //   child: Container(
              //     color: Colors.blue,
              //   ),
              // )
            ],
          );
        },
      ),
    );
  }
}
