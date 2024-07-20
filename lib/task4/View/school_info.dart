import 'package:flutter/material.dart';
import 'package:internship/task4/Model/model.dart';
import 'package:internship/task4/ViewModel/view_model.dart';

class SchoolInfo extends StatefulWidget {
  SchoolInfo({Key? key}) : super(key: key);

  @override
  State<SchoolInfo> createState() => _SchoolInfoState();
}

class _SchoolInfoState extends State<SchoolInfo> {
  String schoolName = "School Name";

  String schoolAddress = "School Address";

  String studentsNo = "Number of Students";

  String teachersNo = "Number of Teachers";

  final _formKey = GlobalKey<FormState>();

  final _schoolNameController = TextEditingController();

  final _schoolAddressController = TextEditingController();

  final _numberOfStudentsController = TextEditingController();

  final _numberOfTeachersController = TextEditingController();


  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        schoolData = SchoolModel(
          schoolName: _schoolNameController.text,
          schoolAddress: _schoolAddressController.text,
          numberOfStudents: _numberOfStudentsController.text,
          numberOfTeachers: _numberOfTeachersController.text,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: const Color(0xff477B71),
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        title: const Text(
          'School Info',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(60),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'imagetask4/school.png',
                  width: 250,
                ),
              ),
              reusableTextField(schoolName, Icons.school, _schoolNameController,
                  'Please enter school name'),
              const SizedBox(
                height: 15,
              ),
              reusableTextField(schoolAddress, Icons.location_on_rounded,
                  _schoolAddressController, 'Please enter school address'),
              const SizedBox(
                height: 15,
              ),
              reusableTextField(
                  studentsNo,
                  Icons.person,
                  _numberOfStudentsController,
                  'Please enter number of students'),
              const SizedBox(
                height: 15,
              ),
              reusableTextField(
                  teachersNo,
                  Icons.person,
                  _numberOfTeachersController,
                  'Please enter number of teachers'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Container(
                    width: 300,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0, 1),
                            blurRadius: 12.0)
                      ],
                      borderRadius: BorderRadius.circular(30.0),
                      color: const Color(0xffe9b637),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ButtonTheme(
                        minWidth: 300,
                        child: TextButton(
                          onPressed: _submitForm,
                          child: const Text(
                            'Show Data',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
              ),
              SizedBox(height: 20),
              if (schoolData != null)
                OutPutData()
            ],
          ),
        ),
      ),
    );
  }


}
