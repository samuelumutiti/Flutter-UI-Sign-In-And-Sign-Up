import 'package:flutter/material.dart';

class ResetpswdPage extends StatefulWidget {
  const ResetpswdPage({super.key});

  @override
  State<ResetpswdPage> createState() => _ResetpswdPageState();
}

class _ResetpswdPageState extends State<ResetpswdPage> {

  final TextEditingController emailresetController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 119, 143, 250),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text("Reset password",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 237, 240, 248),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(Icons.wallet,
              size: 100,
              color: const Color.fromARGB(255, 119, 143, 250),
            ),
            SizedBox(height: 50,),
            Text("Forgot password ?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Text("No worries, we'll send you reset instructions."),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 8),
                  child: TextField(
                    controller: emailresetController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your email",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Icon(Icons.email),
                      )
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 119, 143, 250),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text("Reset password",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}