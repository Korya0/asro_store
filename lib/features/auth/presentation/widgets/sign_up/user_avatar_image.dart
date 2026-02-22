import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class UserAvararImage extends StatelessWidget {
  const UserAvararImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 38,
      backgroundImage: const AssetImage(AppImages.userAvatar),
      backgroundColor: Colors.grey.withValues(alpha: .1),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: -15,
            right: -15,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
