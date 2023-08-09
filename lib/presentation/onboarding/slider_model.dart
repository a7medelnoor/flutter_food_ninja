class SliderModel {
  String image;
  String title;
  String description;

  // Constructor for variables
  SliderModel({
    required this.title,
    required this.description,
    required this.image,
  });

}

// List created
List<SliderModel> getSlides() {
  List<SliderModel> slides = [];

  // Item 1
  slides.add(SliderModel(
    image: "assets/images/onboarding_image_1.png",
    title: "Find your  Comfort Food here",
    description:
        "IHere You Can find a chef or dish for every taste and color. Enjoy!",
  ));

  // Item 2
  slides.add(SliderModel(
    image: "assets/images/onboarding_image_2.png",
    title: "Food Ninja is Where Your Comfort Food Lives",
    description: "Enjoy a fast and smooth food delivery at your doorstep",
  ));

  return slides;
}
