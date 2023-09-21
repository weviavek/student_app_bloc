// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:student_app_bloc/src/constants/constant_values.dart';

class ProfilePicture extends StatelessWidget {
  String? imagePath;
  bool isEditMode;
  ProfilePicture({super.key, this.imagePath, required this.isEditMode});

  @override
  Widget build(BuildContext context) {
    imagePath ??= defaultImagePath;
    return SizedBox(
        width: 300,
        height: 300,
        child: Stack(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imagePath!),
            maxRadius: 300,
          ),
          isEditMode
              ? Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.delete_rounded),
                  ),
                )
              : const SizedBox(),
          isEditMode
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () async {},
                    child: const Icon(Icons.edit),
                  ),
                )
              : const SizedBox()
        ]));
  }
}
