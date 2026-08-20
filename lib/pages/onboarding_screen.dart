import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Column(
         children: [
           Expanded(
             child: Stack(
               children:[ PageView(
                controller: PageController(),
                onPageChanged: (index){
                  setState((){
                    currentPage = index;
                  });
                
                },
                children: [
                  Container(
  color: Colors.white,
  child: Column(
    children: [
      const SizedBox(height: 90), // Top space Skip button ke liye
      
      // Rounded Corner Image
      ClipRRect(
        borderRadius: BorderRadius.circular(40), // Curved image edges
        child: Image.network(
          "assets/images/onboarding1.jpg",
          height: 320,
          width: 280,
          fit: BoxFit.cover,
        ),
      ),
      
      const SizedBox(height: 30),
      
      // Heading Text
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Text(
          "Find your perfect rental on Redfin",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      
      const SizedBox(height: 12),
      
      // Subtitle Text
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,
            height: 1.4,
          ),
        ),
      ),
    ],
  ),
)
                ],
                
             
                
                     ),
                       Positioned(
                    top: 50,
                    right: 20,
                    child: TextButton(onPressed: (){}, child: const Text("Skip", style: TextStyle(color: Colors.green),)))
               
               ]
             ),
           ),
           Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentPage == 0? Colors.green : Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentPage == 1 ? Colors.green : Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentPage == 2 ? Colors.green : Colors.grey,
                      ),
                    )

                  ],

                ),
                
         ],
       ),

    );
  }
}