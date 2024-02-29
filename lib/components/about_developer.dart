import 'package:physics_convertions_unit/models/about_me.dart';
import 'package:flutter/material.dart';

class AboutDev extends StatelessWidget {
  const AboutDev({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Center(
                child: Text(
              'About Developer',
              style: TextStyle(fontFamily: 'Poppins'),
            )),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    child: Image.asset(
                      aboutMe.imageAsset,
                      height: 150,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Name'),
                    const SizedBox(width: 7),
                    const Text(':'),
                    const SizedBox(width: 20),
                    Text(aboutMe.name),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Age'),
                    const SizedBox(width: 20),
                    const Text(':'),
                    const SizedBox(width: 20),
                    Text(aboutMe.age),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Email'),
                    const SizedBox(width: 8.8),
                    const Text(':'),
                    const SizedBox(width: 21),
                    Text(aboutMe.email),
                  ],
                ),
                const SizedBox(height: 21),
                const Center(
                    child: Text(
                  'Educational Background',
                  style: TextStyle(fontSize: 20),
                )),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (String academic in aboutMe.academic)
                          Text(
                            academic,
                            style: const TextStyle(fontSize: 12),
                          ),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (String ageAcademic in aboutMe.ageAcademic)
                          Text(
                            ageAcademic,
                            style: const TextStyle(fontSize: 12),
                          ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      child: CircleAvatar(
        backgroundImage: AssetImage(
          aboutMe.imageAsset,
        ),
      ),
    );
  }
}
