import 'package:flutter/material.dart';
import 'package:practice2/widgets/detail.dart';
import 'package:practice2/widgets/web.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String,String>> _items = [
    {
      "category_name": "Autonomous Mobile Robotics",
      "description": "Designing, building, and maintaining robots to solve problems in industries from manufacturing to aerospace, mining to medicine.",
      "icon_name": "logo1.png"
    },
    {
      "category_name": "Cloud Computing",
      "description": "Helping companies migrate their physical IT activities, such as file storage and on-site servers, into a virtual environment.",
      "icon_name": "logo2.png"
    },
    {
      "category_name": "Cyber Security",
      "description": "Protecting an organization's computer systems and networks to prevent hackers from accessing and/or stealing sensitive information and data.",
      "icon_name": "logo3.png"
    },
    {
      "category_name": "Web Technologies",
      "description": "Planning, designing, testing, and maintaining websites, incorporating third-party platforms, and integrating social media platforms.",
      "icon_name": "logo4.png"
    },
    {
      "category_name": "Graphic Design Technology",
      "description": "Combining design, art, typography, typesetting, illustration, printing, and publishing to create graphic designs for both online and printed publications.",
      "icon_name": "logo5.png"
    },
    {
      "category_name": "Mobile Applications Development",
      "description": "Using technology and design to create apps that are appealing and function well on mobile devices.",
      "icon_name": "logo6.png"
    },
    {
      "category_name": "Information Network Cabling",
      "description": "Designing and installing cable systems for telecommunication and network communications.",
      "icon_name": "logo7.png"
    },
    {
      "category_name": "Mechanical Engineering CAD",
      "description": "Using specialist software to create two and three-dimensional images and animations of projects in manufacturing and advertising.",
      "icon_name": "logo8.png"
    },
    {
      "category_name": "IT Software Solutions for Business",
      "description": "Creating new systems and modifying existing ones to provide software solutions to large and small businesses.",
      "icon_name": "logo9.png"
    },
    {
      "category_name": "3D Digital Game Art",
      "description": "Using creativity, technology, and geometry skills to create captivating animated experiences in video games.",
      "icon_name": "logo10.png"
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage",),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purpleAccent,
      ),
      body:  ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 10,
              child: ListTile(
                title: Text(_items[index]["category_name"]!),
                subtitle:Text(_items[index]["description"]!),
                trailing: Icon(Icons.chevron_right),
                leading: Image.asset("assets/${_items[index]["icon_name"]}"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(eventItems: _items[index],)));
                },
              ),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => WebPage( )));
      },child:Icon(Icons.web)),

    );
  }
}
