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

class CircleImage extends StatelessWidget {
  CircleImage({required this.image});
  String? image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 8, 1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22), // Image border
          child: SizedBox.fromSize(
            size: const Size.fromRadius(30), // Image radius
            child: Image.network(image!, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      margin: EdgeInsets.fromLTRB(0, 10, 8, 10),
      width: 160.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://images.adsttc.com/media/images/5e74/f376/b357/6549/2a00/055c/large_jpg/Ben_Hosking.jpg?1584722798'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(22))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recipe',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  Text('Username here',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  Text('Short description',
                      style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey)),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Recipes',
                          style: TextStyle(
                              fontSize: 7,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey)),
                      Text('22-October-2021',
                          style: TextStyle(
                              fontSize: 7,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }
}
