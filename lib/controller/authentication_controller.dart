import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthenticationController extends GetxController {
  static AuthenticationController authenticationController = Get.find();
  late Rx<File?> pickedFile;
  File? get profileImage => pickedFile.value;
  XFile? imageFile;
  pickedImageFromGallery() async {
    imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      Get.snackbar("SUCESSFUL", "Image  successfully loaded from GALLERY ");
    }
    pickedFile = Rx<File?>(File(imageFile!.path));
  }

  pickedImageFromCamera() async {
    imageFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (imageFile != null) {
      Get.snackbar("SUCESSFUL", "Image  successfully loaded from CAMERA ");
    }
    pickedFile = Rx<File?>(File(imageFile!.path));
  }
}
