import 'package:flutter/material.dart';
import 'package:nikezone/pages/home_page.dart';

class intro_page extends StatelessWidget {
  const intro_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(189, 189, 189, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //logo
              const SizedBox(height: 200),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Image.asset('lib/images/nike.png'),
              ),

              const SizedBox(height: 48),

              Text('Just Do It',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              const SizedBox(height: 24),
              Text(
                'Brand new sneakers and customs kicks made with premimum quality',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24),

              GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
