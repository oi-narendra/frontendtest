import 'package:flutter/material.dart';

/// profile avatar atom
/// [ProfileAvatar] is the component to show profile avatar
/// [urlIndex] is the url of the avatar
/// [size] is the size of the avatar
class ProfileAvatar extends StatelessWidget {
  /// profile avatar constructor
  const ProfileAvatar({
    this.urlIndex = 0,
    this.size = 36,
    super.key,
  }) : assert(urlIndex < 2, 'url index must be less than 2');

  /// url of the avatar
  final int urlIndex;

  /// size of the avatar
  final double size;

  /// static profile urls
  static const profileUrls = [
    'https://s3-alpha-sig.figma.com/img/5d16/59d9/c2c0c46656d80a03515597da8b109970?Expires=1691366400&Signature=N8Y0J-8WiiSkgsW2ebUIFdOI4xjeyPfZ~4A2Dq6UEzrmvYb2ToWEiuSBbz8JmpKaR5lm9zW6bJq4ATbRjehPzuVTXe4vB0Ztfy8lRShOero8I2QVQ~rTvxFebrOBVgnNtpNNHNsvwZxVawzZEDY~yMjpcoeK6YLfyfcQskbgCtU9wKXxlwfwXeFjbkOMcAMzGyu4zf0Qzd0voD-nZCCd5abCGP3Uma0Clxg9kmrvBADEbHDHPKcAHTD7DazW0yuue0iDeaLc-4KsIsmrNz3kGiTgBbKmqYTb0Mb-BIJmr6umPe77OtQvxQq3MBAqzM1f5QxXKkAkrcKOs4RC2Im89Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
    'https://s3-alpha-sig.figma.com/img/acbc/2616/7a8226cdaca43c33ebb0e858adb7de79?Expires=1691366400&Signature=qCiroARCmN6ieY-T0P4ZKH3ftvDOfvX0mDjnEE4y3jZYBtsFPZXxOkDkYYtpKqnKvLNa0SQ468a5uBO397n0SLApZwV9eFXgJhBvwunhGHrKwdEkmh7zMQ1Ekc86DLqXDHJO07Xm6nNnbcaCUDqGPyzrZBnxnmLWdL5Lqh0x9YkvDw9D42X6qTsPtmaNFQp5~7aEdhSbKv60rKbEmh6lYmS4YmImZ3Nggiq31D7NK0sGjM2M5-IBEqVANGcv3kMfd1ODSx-We6~Ax--HVsrANoH8G5zXhNjWCL4s5RE-T-jRfT3qjMQNJ-ecjQORbFNCAc8Fk20qjemXQbrXqFKCPA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
  ];

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundColor:
          urlIndex == 0 ? const Color(0xFFFFDDA8) : const Color(0xFFFBB0AE),
      child: ClipOval(
        child: Image.network(
          profileUrls[urlIndex],
          width: size,
          height: size,
          fit: BoxFit.cover,
          alignment:
              urlIndex == 0 ? Alignment.topCenter : const Alignment(0, -0.5),
        ),
      ),
    );
  }
}
