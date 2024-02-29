import 'package:flutter/material.dart';

class BannerLeftDashboard extends StatelessWidget {
  const BannerLeftDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Colors.white.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/teacher.png',
            scale: 12,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Text(
              'Physics Is Fun!',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),
            ),
          ),
        ],
      ),
    );
  }
}

class BannerRightDashboard extends StatefulWidget {
  const BannerRightDashboard({
    super.key,
  });

  @override
  State<BannerRightDashboard> createState() => _BannerRightDashboardState();
}

class _BannerRightDashboardState extends State<BannerRightDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: const Column(
        children: [
          SizedBox(height: 26),
          Text(
            'Have You!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Studied Physics',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 15,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Today!',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 50,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
