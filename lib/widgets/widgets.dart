import 'package:flutter/material.dart';

class TopCards extends StatelessWidget {
  TopCards(
      {Key? key,
      required this.imagePath,
      required this.dishName,
      required this.dishCalories,
      required this.dishCategory,
      required this.dishTime})
      : super(key: key);
  String? imagePath;
  String? dishName;
  String? dishCategory;
  String? dishCalories;
  String? dishTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 20,
        bottom: 15,
      ),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30), // Image border
              child: SizedBox.fromSize(
                size: const Size.fromRadius(38), // Image radius
                child: Image.asset(imagePath!, fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dishName!,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(dishCategory!,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  const Divider(),
                  Row(
                    children: [
                      const Icon(
                        Icons.spa,
                        size: 16,
                        color: Colors.grey,
                      ),
                      Expanded(
                          child: Text(
                        dishCalories!,
                        style: const TextStyle(
                            fontSize: 7.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )),
                      const Icon(
                        Icons.alarm,
                        size: 16,
                        color: Colors.grey,
                      ),
                      Expanded(
                          child: Text(
                        dishTime!,
                        style: const TextStyle(
                            fontSize: 7.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 25, maxWidth: 70),
            child: MaterialButton(
              onPressed: null,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    width: 1.3,
                    color: Colors.black38,
                  )),
              child: const Text('Cook',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}
