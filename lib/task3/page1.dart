import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:internship/task3/AnimsModel.dart';

class seconedPage extends StatefulWidget {
  @override
  State<seconedPage> createState() => _seconedPageState();
}

class _seconedPageState extends State<seconedPage> {
  var emailConteroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    List<ModelPet> petList = [
      ModelPet(
        image: 'imageTask3/image1.jpeg',
        PetLove: 20,
        name: 'Golden',
        type: 'Dog',
      ),
      ModelPet(
        image: 'imageTask3/image2.jpeg',
        PetLove: 18,
        name: 'Labrador',
        type: 'Dog',
      ),
      ModelPet(
        image: 'imageTask3/image3.jpeg',
        PetLove: 18,
        name: ' Kitten',
        type: 'Cat',
      ),
      ModelPet(
        image: 'imageTask3/image4.jpeg',
        PetLove: 12,
        name: ' Cardigan',
        type: 'Dog',
      ),
      ModelPet(
        image: 'imageTask3/image5.png',
        PetLove: 15,
        name: ' Parrot',
        type: 'Bird',
      ),
    ];

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: AlignmentDirectional.bottomCenter,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20),topEnd: Radius.circular(20)),
                        color: Colors.grey[200],
                      ),
                      height: 100,
                      width: double.infinity,
                      // color: Colors.blue,
                    ),
                    Text(
                      'Pet Market ',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          wordSpacing: 0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Form(
                      key: formkey,
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 16, height: 1, color: Colors.grey),
                        controller: emailConteroller,
                        validator: (value) {},
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          // اللون الرمادي للخلفية
                          filled: true,
                          hintText: 'Search by pet type',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                          // labelText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.orangeAccent,
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
                        textAlign: TextAlign
                            .center, // Align the text and the hint text in the center
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return CardWidget(
                                  petList[index],
                                  context,
                                  index,
                                );
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                height: 10.0,
                              ),
                              itemCount: petList.length,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CardWidget(ModelPet modelPet, index, label) => Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Card(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  20), // تحديد نصف القطر لتشكيل الزوايا المستديرة
            ),
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image(image: AssetImage('${modelPet.image}')),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${modelPet.name}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${modelPet.type}',
                        style: TextStyle(color: Colors.grey[500], fontSize: 19),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child:
                                Image(image: AssetImage('imageTask3/logo.png')),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Pet Love :',
                            style: TextStyle(
                                color: Color(0xFFDB6400),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '${modelPet.PetLove}',
                            style: TextStyle(
                                color: Color(0xFFDB6400),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
