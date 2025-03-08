class UnboardingContect{
   String image;
   String title;
   String description;

  UnboardingContect(
    {required this.image, required this.title, required this.description}
  );
}

List <UnboardingContect> contents = [
    UnboardingContect(
      description: 'Pick your food from our menu\n      More than 35 times',
      image: 'images/menu_1.png',
      title: "Select from Our\n  Best Menu"
      ),

    UnboardingContect(
      description: "you can pay cash on delivery and\n    Card payment is available",
      image: "images/delivery_1.png",
      title: "Easy and Online Payment"
    ),
    
     UnboardingContect(
      description: "Deliver your food at your\n    Doorstep",
      image: "images/delivery_2.png",
      title: "Quick Delivery at Your Doorstep"
    ),
];