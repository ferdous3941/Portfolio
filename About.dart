import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: About(),
    debugShowCheckedModeBanner: false,
  ));
}

//stless
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/image3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 30.0, left: 30),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(radius: 40, backgroundImage: AssetImage("images/image_me.jpg"),),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Ferdous Hasan", style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 0, 0, 0) , fontFamily: "Roboto"),),
                      Text("Android Developer", style: TextStyle(fontSize: 18,color: Color.fromARGB(177, 0, 0, 0),fontFamily: "Creator"),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.school, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("B.sc in CSE", style: TextStyle(fontSize: 24,color: Color.fromARGB(179, 0, 0, 0),fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.note_add_rounded, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("Android Portfolio App", style: TextStyle(fontSize: 24,color:Color.fromARGB(179, 0, 0, 0),fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_pin, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("Savar, Dhaka", style: TextStyle(fontSize: 24,color: Color.fromARGB(179, 0, 0, 0),fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("hasan15-3941@diu.edu.bd", style: TextStyle(fontSize: 24,color: Color.fromARGB(179, 0, 0, 0),fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone, size: 30,color: Colors.teal,),
                        SizedBox(width: 15,),
                        Text("+8801795149454", style: TextStyle(fontSize: 24,color: Color.fromARGB(179, 0, 0, 0),fontFamily: "Robotor"),),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 60,),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("Ferdous Hasan is a remarkable BSc student of Daffodil International University in Computer Science and Engineering (CSE) hailing from Bangladesh. His unwavering dedication, sharp intellect, and passion for CSE set her apart. Ferdous's exceptional academic performance, problem-solving skills, and collaborative nature make his a deserving candidate for recognition. With a commitment to personal growth and a drive to make a positive impact, Ferdous is poised to excel in her field and contribute meaningfully to society.", style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 0, 0, 0),fontFamily: "Robotor"),),
              ),
              SizedBox(height: 70,),
              Text("Created By Ferdous Hasan", style: TextStyle(fontSize: 24,color: Color.fromARGB(255, 0, 0, 0),fontFamily: "Robotor"),),
            ],
          ),
        ),
      ),
    );
  }
}