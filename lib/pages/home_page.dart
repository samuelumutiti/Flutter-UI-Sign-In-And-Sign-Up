import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  final auth = FirebaseAuth.instance.currentUser;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionsController = TextEditingController();


  



  void openPinsBox()async{
    showBottomSheet(
      backgroundColor: const Color.fromARGB(255, 119, 143, 250),
      context: context, 
      builder: (BuildContext context){
        return SizedBox(
          height: 300,
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                width: 100,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Title",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: descriptionsController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Descriptions",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text("Done",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 240, 248),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            FirebaseAuth.instance.signOut();
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.logout),
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 119, 143, 250),
        title: CupertinoSearchTextField(
          backgroundColor: Colors.white,
          placeholder: "What are you looking for",
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Image.asset("lib/assets/profile.jpeg"),
            ),
          ),
        ],
      ),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        child: FloatingActionButton(
          onPressed: (){
            openPinsBox();
          }, 
          backgroundColor: const Color.fromARGB(255, 119, 143, 250),
          child: Icon(Icons.add, color: Colors.white,),
        ),
      ),
    );
  }
}