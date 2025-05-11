import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var nameEditingController = TextEditingController();
  var icEditingController = TextEditingController();
  var emailEditingController = TextEditingController();
  var schoolEditingController = TextEditingController();
  var addressEditingController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  File? _image;

  _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purpleAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "Registration Form",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            // Upload image button
            ElevatedButton(onPressed: _pickImage, child: Text("Upload Image")),
            SizedBox(height: 15),
            // Show selected image
            _image != null
                ? Image.file(_image!, height: 150)
                : Text("No image selected"),
            SizedBox(height: 20),
            TextField(
              controller: nameEditingController,
              decoration: InputDecoration(hintText: "Name"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: icEditingController,
              decoration: InputDecoration(hintText: "IC Number"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailEditingController,
              decoration: InputDecoration(hintText: "Email"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: schoolEditingController,
              decoration: InputDecoration(hintText: "School Institution"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: addressEditingController,
              decoration: InputDecoration(hintText: "Address"),
            ),
            SizedBox(height: 30),

            SizedBox(height: 30),

            //Basic Toast bar

            // ElevatedButton(
            //   onPressed: () {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         content: Text("your Data has been submitted"),
            //         duration: Durations.extralong3,
            //       ),
            //     );
            //
            //     print(nameEditingController.text);
            //     print(emailEditingController.text);
            //     print(icEditingController.text);
            //     print(emailEditingController.text);
            //     print(schoolEditingController.text);
            //     print(addressEditingController.text);
            //     print(_image?.path ?? 'No image selected');
            //   },
            //   child: Text("basic toast"),
            // ),

            // Delight toast
            ElevatedButton(
              onPressed: () {
                DelightToastBar(
                  position: DelightSnackbarPosition.top,
                  autoDismiss: true,
                  snackbarDuration: Durations.extralong4,
                  builder: (context) {
                    return ToastCard(
                      title: Text("Your data has been submitted"),
                      leading: Icon(Icons.notifications),
                    );
                  },
                ).show(context);

                print(nameEditingController.text);
                print(emailEditingController.text);
                print(icEditingController.text);
                print(emailEditingController.text);
                print(schoolEditingController.text);
                print(addressEditingController.text);
                print(_image?.path ?? 'No image selected');
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
