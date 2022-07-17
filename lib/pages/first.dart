import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: unused_element
final ImagePicker _picker = ImagePicker();
Image image = image;

// ignore: camel_case_types
class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white30,
        body: Container(
          margin: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              TextField(
                  decoration: InputDecoration(
                    labelText: 'Title',
                    icon: Icon(Icons.title),
                  ),
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              TextField(
                maxLines: 8,
                decoration: InputDecoration(
                  labelText: 'Description',
                  icon: Icon(Icons.description),
                ),
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Link',
                  icon: Icon(Icons.link),
                ),
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Pick Image',
                  icon: Icon(Icons.image),
                ),
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        floatingActionButton: SizedBox(
            height: 40,
            width: 40,
            child: FloatingActionButton(
              backgroundColor: Colors.orange,
              onPressed: () async => {
                image = (await _picker.pickImage(source: ImageSource.gallery))
                    as Image,
                const AlertDialog(
                  title: Text("Upload"),
                  // Retrieve the text which the user has entered by
                  // using the TextEditingController.
                  content: Text("Upload to Firebase ? "),
                  actions: <Widget>[
                    Text('OK'),
                  ],
                )
              },
              tooltip: "Upload",
              child: const Icon(Icons.upload),
            )),
      );
}
