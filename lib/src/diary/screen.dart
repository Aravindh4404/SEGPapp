import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:smart_fridge/grocery_listings/hotel_home_screen.dart';


class MyHomePage extends StatefulWidget {
  final AnimationController? animationController;
  final Function(double) onScroll;

  const MyHomePage({
    Key? key,
    this.animationController,
    required this.onScroll,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  File? selectedImage;
  List<dynamic>? detectionResults;
  String? errorMessage;

  Future<XFile?> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    return image;
  }

  Future<List<dynamic>> detectObjects(File image) async {
  final uri = Uri.parse('http://192.168.217.57:5000/detect_objects'); // Make sure to use the correct IP
  var request = http.MultipartRequest('POST', uri)
    ..files.add(await http.MultipartFile.fromPath('file', image.path));

  var streamedResponse = await request.send();
  var response = await http.Response.fromStream(streamedResponse);

  print('Response body: ${response.body}'); // This line logs the response body
  var data = json.decode(response.body);
  return data;
}
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Object Detection App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (selectedImage != null) Image.file(selectedImage!),
            if (errorMessage != null) Text(errorMessage!),
            ElevatedButton(
              onPressed: () async {
                XFile? image = await pickImage();
                if (image != null) {
                  setState(() {
                    selectedImage = File(image.path);
                    detectionResults = null;
                  });
                }
              },
              child: Text('Pick Image'),
            ),
            ElevatedButton(
  onPressed: () async {
    if (selectedImage != null) {
      try {
        var results = await detectObjects(selectedImage!);
        setState(() {
          detectionResults = results;
          errorMessage = null;
        });
        // Extract tags from detection results
        List<String> tags = results.map<String>((result) => result['Tag']).toList();
        // Navigate to GroceryScreen with tags
        // MyHomePage.dart
// This part of the code is fine as you've provided it. Just ensure that 
// after detection, it navigates to GroceryScreen correctly with the tags.

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => GroceryScreen(tags: tags),
  ),
);} catch (e) {
        setState(() {
          errorMessage = "Failed to detect objects: $e";
        });
      }
    }
  },
  child: Text('Detect Objects'),
),

            if (detectionResults != null)
              Expanded(
                child: ListView.builder(
                  itemCount: detectionResults!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(detectionResults![index]['Tag']),
                      subtitle: Text('Probability: ${detectionResults![index]['Probability']}'),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}