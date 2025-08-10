import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hsi_sandbox_latihan_4/add_student_page.dart';

import 'models/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HSI Sandbox Flutter Latihan 5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true, // You can set to false if you prefer old Material 2 style
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Student> students = [];

  @override
  void initState() {
    super.initState();
    loadStudentData();
  }

  Future<void> loadStudentData() async {
    final String response = await rootBundle.loadString('lib/data/students.json');
    final List<dynamic> data = jsonDecode(response);
    setState(() {
      students = data.map((json) => Student.fromJson(json)).toList();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Siswa'),
      ),
      body: students.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];
              return ListTile(
                title: Text(student.name),
                subtitle: Text('Usia: ${student.age}, Gender: ${student.gender}'),
              );
            },
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddStudentPage()),
            );

            if (result != null && result is Student) {
              setState(() {
                students.add(result);
              });
            }
        },
        backgroundColor: Colors.blue, // force a visible color
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

