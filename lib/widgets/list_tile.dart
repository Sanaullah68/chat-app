import 'package:flutter/material.dart';

ListTile buildListTile(
    String imagePath, String title, String subtitle, String trailing,
    {String? notificationCount}) {
  return ListTile(
    leading: Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (notificationCount != null)
          Positioned(
            right: 10,
            top: 0,
            bottom: 15,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                color: Color(0xff414756),
                shape: BoxShape.circle,
              ),
              constraints: const BoxConstraints(
                minWidth: 18,
                minHeight: 18,
              ),
              child: Center(
                child: Text(
                  notificationCount,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
      ],
    ),
    title: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
    subtitle: Text(
      subtitle,
      style: const TextStyle(color: Colors.white70),
    ),
    trailing: Text(
      trailing,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
