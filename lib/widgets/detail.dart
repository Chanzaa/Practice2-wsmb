import 'package:flutter/material.dart';
import 'package:practice2/widgets/register.dart';

class DetailPage extends StatelessWidget {
  Map<String,String> eventItems;

  DetailPage({required this.eventItems});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Event Details"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Card(
            child: Column(
              children: [
                Text("World Skill 2024"),
                SizedBox(height: 40,),
                Image.asset("assets/${eventItems["icon_name"]}", width: 200,),
                SizedBox(height: 20,),
                Text("Title : ${eventItems["category_name"]}"),
                SizedBox(height: 20,),
                Text("Description : ${eventItems["description"]}"),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage() ));

                }, child:Text("Register"))
                ]
            ),
          ),
        ),
      ),

    );
  }
}
