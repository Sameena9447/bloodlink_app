class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Location-Based Search",
    image: "assets/onboard/1.jpg",
    desc:
        "Users can easily find nearby services based on their current location or specified area within the Kollam district.",
  ),
  OnboardingContents(
    title: "Ratings and Reviews",
    image: "assets/onboard/2.jpg",
    desc:
        " Users can rate and review the services they have experienced, providing valuable feedback to help others make informed decisions.",
  ),
  OnboardingContents(
    title: "Service Directory",
    image: "assets/onboard/3.jpg",
    desc:
        "he app features a detailed directory of block panchayat services including hotels, hospitals, educational institutions, government offices, and more.",
  ),
  OnboardingContents(
    title: "Emergency Assistance",
    image: "assets/onboard/4.jpg",
    desc:
        "In case of emergencies, the app provides quick access to emergency contact numbers for essential services like hospitals, police stations, and fire departments.",
  ),
];
