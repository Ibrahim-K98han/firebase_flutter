import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/models/student_model.dart';
import 'package:flutter/material.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<Student> students = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: firebaseFirestore.collection('student').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              students.clear();
              for (var doc in snapshot.data!.docs) {
                students.add(Student(
                    doc.get('name'), doc.get('age'), doc.get('mobile')));
              }
              return ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(students[index].name),
                    subtitle: Text(students[index].age),
                    trailing: Text(students[index].mobile),
                  );
                },
              );
            } else {
              return Center(
                child: Text('No data availabel'),
              );
            }
          }),
    );
  }
}
