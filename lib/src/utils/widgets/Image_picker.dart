// import 'dart:html';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:image_picker/image_picker.dart';

// class ImagePicker extends StatelessWidget {
//   const ImagePicker({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
//               Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: ClipOval(
//                   child: CircleAvatar(
//                     radius: 45,
//                     child: profilePicIsLoading
//                         ? const LoadingScreen()
//                         : profile.profilePic == null
//                             ? Image.asset("lib/src/assets/profile.png")
//                             : Image.network(profile.profilePic!),
//                   ),
//                 ),
//               ),
//               ClipOval(
//                 child: InkWell(
//                   onTap: () async {
//                     setState(() {
//                       profilePicIsLoading = true;
//                     });
//                     String url = await Uploader().uploadFile("profile");
//                     setState(() {
//                       profilePicIsLoading = false;
//                       profile.profilePic = url;
//                     });
//                   },
//                   child: Container(
//                     padding:
//                         const EdgeInsets.only(bottom: 5, left: 3, right: 3),
//                     decoration: const BoxDecoration(boxShadow: [
//                       BoxShadow(
//                           blurRadius: 50,
//                           spreadRadius: 0,
//                           offset: Offset(0, 15))
//                     ]),
//                     child: const CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 17,
//                       child: Icon(Icons.camera_alt_outlined),
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }





// class Uploader {
//   final storageRef = FirebaseStorage.instance.ref();
//   String id = FirebaseAuth.instance.currentUser!.uid;
//   final ImagePicker _picker = ImagePicker();

//   Future<String> uploadFile(String name) async {
//     XFile? selected = await _picker.pickImage(source: ImageSource.gallery);
//     File file = File(selected!.path);
//     if (file.existsSync()) {
//       UploadTask uploadTask = storageRef.child("$id/${id}_$name").putFile(file);
//       var downloadUrl = await (await uploadTask).ref.getDownloadURL();
//       return downloadUrl.toString();
//     }
//     return "";
//   }
// }