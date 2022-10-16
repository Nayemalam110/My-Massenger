import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ImagePickerClass extends StatefulWidget {
  ImagePickerClass(this.imagePickFn);

  final void Function(File pickImage) imagePickFn;

  @override
  State<ImagePickerClass> createState() => _ImagePickerClassState();
}

class _ImagePickerClassState extends State<ImagePickerClass> {
  File? _imagePicked;

  void _pickedImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImageFile = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 60,
        maxHeight: 150,
        maxWidth: 150);
    setState(() {
      _imagePicked = File(pickedImageFile!.path);
    });
    widget.imagePickFn(File(pickedImageFile!.path));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey,
            backgroundImage:
                _imagePicked != null ? FileImage(_imagePicked!) : null),
        ElevatedButton.icon(
          onPressed: _pickedImage,
          icon: Icon(Icons.image),
          label: Text('Add Image'),
        )
      ],
    );
  }
}
