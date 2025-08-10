import 'package:flutter/material.dart';
import 'package:hsi_sandbox_latihan_4/models/student.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({super.key});

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {

  final _formKey = GlobalKey<FormState>();

  String name = "";
  int age = 0;
  String gender = "Laki-laki";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Siswa"),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Nama"),
                onSaved: (value) => name = value ?? '',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name cannot be empty';
                  }
                  if (value.length < 3) {
                    return 'Name must be at least 3 characters';
                  }
                  return null; // ✅ No error
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Usia'),
                keyboardType: TextInputType.number,
                onSaved: (value) => age = int.tryParse(value ?? '0') ?? 0,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Age cannot be empty';
                  }
                  final parsed = int.tryParse(value);
                  if (parsed == null || parsed <= 0) {
                    return 'Enter a valid age';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                value: gender,
                items: ['Laki-laki', 'Perempuan']
                    .map((g) => DropdownMenuItem(value: g, child: Text(g)))
                    .toList(),
                onChanged: (value) => setState(() => gender = value ?? 'Laki-laki'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a gender';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  // Validation
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pop(context, Student(name: name, age: age, gender: gender));
                  }
                },
                child: const Text('Simpan')
              ),
            ],
          )
        ),
      ),
    );
  }
}