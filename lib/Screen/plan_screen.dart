import 'package:flutter/material.dart';
import 'package:travelmate_pj/Screen/signup_got.dart';

class PlanSelectionScreen extends StatefulWidget {
  const PlanSelectionScreen({Key? key}) : super(key: key);

  @override
  State<PlanSelectionScreen> createState() => _PlanSelectionScreenState();
}

class _PlanSelectionScreenState extends State<PlanSelectionScreen> {
  bool isExtended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF4A6670)),
        title: const Text(
          "Select a Plan",
          style: TextStyle(color: Color(0xFF4A6670)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupGot(),
                ));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ToggleButtons(
                isSelected: [!isExtended, isExtended],
                onPressed: (index) {
                  setState(() {
                    isExtended = index == 1;
                  });
                },
                borderRadius: BorderRadius.circular(16),
                selectedColor: Colors.white,
                fillColor: const Color(0xFF4A6670),
                color: const Color(0xFF4A6670),
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text('Limited'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text('Extended'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            buildFeatureList(isExtended),
            const Spacer(),
            Center(
              child: Column(
                children: [
                  Text(
                    "Subscribe now for just 15 SAR",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: const Color(0xFF4A6670)),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle subscription logic
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      backgroundColor: const Color(0xFF4A6670),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Yes",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeatureList(bool isExtended) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildFeatureItem(
            "Browse guides",
            "Explore available guides for all locations",
            false,
            'image/im1.png'),
        buildFeatureItem("Plan your trip",
            "Receive TravelMate deals from locals", false, 'image/im2.png'),
        buildFeatureItem(
            "Submit offers",
            "Connect with tourists visiting your city",
            isExtended,
            'image/im3.png'),
        buildFeatureItem("Choose a guide", "Reach out to your favorites",
            isExtended, 'image/im4.png'),
      ],
    );
  }

  Widget buildFeatureItem(
      String title, String subtitle, bool isExtended, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(imagePath, width: 40, height: 40),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4A6670)),
                    ),
                    if (isExtended)
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "EXTENDED",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF4A6670),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xFF7AA0A7)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
