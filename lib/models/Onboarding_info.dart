class OnboardingInfo {
  final String title;
  final String description;
  final String image;

  const OnboardingInfo({required this.title, required this.description, required this.image});
}
List<OnboardingInfo> items =[
  const OnboardingInfo(
      title: 'Welcome to StayFinder',
      description: 'Discover and book your dream hotel with ease',
      image: 'assets/images/onboarding1.png'),
  const OnboardingInfo(
      title: 'Find Great Deals',
      description: 'Exclusive offers and discounts on premium hotels',
      image: 'assets/images/onboarding2.png'),
  const OnboardingInfo(
      title: 'Let’s Find Your Sweet & Dream Place ',
      description: 'Get the opportunity to stay that you dream of at an affordable price',
      image: 'assets/images/onboarding3.png'),
];