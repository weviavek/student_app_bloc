import 'package:flutter/material.dart';
import 'package:student_app_bloc/src/constants/constant_values.dart';

class ProfilePicture {
  static show(String? imagePath, bool isEditMode) {
    imagePath ??= defaultImagePath;
    return SizedBox(
        width: 300,
        height: 300,
        child: Stack(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imagePath),
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
