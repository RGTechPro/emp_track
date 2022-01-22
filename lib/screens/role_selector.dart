import 'package:flutter/material.dart';

class RoleSelector extends StatelessWidget {
  const RoleSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.blue.shade50, Color(0xffF8F2F4)]),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      "images/employees-logo.png",
                      fit: BoxFit.fitHeight,
                      height: 250,
                    ),
                  ),
                  Text(
                    'Select you role',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.grey)),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15))),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Business Owner/Admin/HR',
                          style: TextStyle(
                              fontFamily: 'Readex',
                              fontSize: 20,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.grey)),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15))),
                      onPressed: () {},
                      child: const Text(
                        'Employee',
                        style: TextStyle(
                            fontFamily: 'Readex',
                            fontSize: 20,
                            color: Colors.black54),
                      ),
                    ),
                  )
                ])),
      ),
    );
  }
}
