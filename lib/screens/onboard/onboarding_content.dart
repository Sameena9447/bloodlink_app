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
    title: "Make a Request",
    image: "assets/images/onboard/image1.png",
    desc:
        "Get the you need Share your blood request and connect with potential donors instantly",
  ),
  OnboardingContents(
    title: "Find a Doctor",
    image: "assets/images/onboard/image2.png",
    desc:
        "Connect with thousands of potectial doctors in your community. Search by blood type.location, and available",
  ),
  OnboardingContents(
    title: "Donate to Others",
    image: "assets/images/onboard/image3.png",
    desc:
        "Together, we can save lives. Join our community of blood donors and make a collective impact.",
  ),
];
