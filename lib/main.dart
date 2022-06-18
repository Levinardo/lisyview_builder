import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class InfoStudent {
  String name;
  String dept;
  String date;
  String image;

  InfoStudent({required this.name, required this.dept, required this.date, required this.image});
}

class MyApp extends StatefulWidget {


  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <dynamic> students = [
    InfoStudent(name:'Syed Usama Hanif', dept:'CS & IT', date: '12-april-2019', image:'sample.jpg'),
    InfoStudent(name:'Syed Talha Hanif', dept:'CS & IT', date: '12-sept-2020', image:'uet.jpg'),
    InfoStudent(name:'M Shayan', dept:'CS & IT', date: '28-sept-2019', image:'shayan.jpg'),
    InfoStudent(name:'M Saqib', dept:'CS & IT', date: '16-Jan-2020', image:'saqib.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView.builder",
        theme: ThemeData(
            primarySwatch: Colors.red
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('ListView Builder'),
          ),
        body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (BuildContext context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 4.0),
              child: Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/${students[index].image}'),
                    ),
                    trailing: Column(
                      children: [
                        const Text('UET Peshawar'),
                        Text(students[index].dept),
                        Text(students[index].date),

                      ],
                    ),
                    title:Text(students[index].name)
                ),
              ),
            );
          }
      ),
        ),
    );
  }
}
