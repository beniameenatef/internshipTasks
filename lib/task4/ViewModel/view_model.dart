//TODO: add your view model class here

import 'package:flutter/material.dart';
import 'package:internship/task4/Model/model.dart';


SchoolModel? schoolData;

Widget OutPutData() => Card(
  margin: EdgeInsets.all(10),
  child: Padding(
    padding: EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          schoolData!.schoolName ?? 'Unknown School',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text('Address: ${schoolData!.schoolAddress ?? 'N/A'}'),
        Text(
            'Number of Students: ${schoolData!.numberOfStudents ?? 'N/A'}'),
        Text(
            'Number of Teachers: ${schoolData!.numberOfTeachers ?? 'N/A'}'),
      ],
    ),
  ),
);


Widget reusableTextField(String text, IconData iconShape,
    TextEditingController controller, String textvalidate) =>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        style: TextStyle(fontSize: 16, height: 1, color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.grey[400],
          // اللون الرمادي للخلفية
          filled: true,
          hintText: text,
          hintStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
          // labelText: 'Search',
          prefixIcon: Icon(
            iconShape,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return textvalidate;
          }
          return null;
        },
      ),
    );