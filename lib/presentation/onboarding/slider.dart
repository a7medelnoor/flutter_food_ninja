import 'package:flutter/cupertino.dart';

class OnBoardingSlider extends StatelessWidget {
  String? description;
  String? image;
  String? title;

  OnBoardingSlider({
    this.description,
    this.title,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null) Image(image: AssetImage(image!)),
          SizedBox(height: 20),
          if (title != null)
            Text(
              title!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          SizedBox(height: 12),
          if (description != null) Text(description!),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
