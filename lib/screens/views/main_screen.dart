import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.blue,
                    ),
                  ),
                  Icon(CupertinoIcons.person_2_fill)
                ],
              ),
              const SizedBox(width: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bem vindo!',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                     Text(
                      'Welliton Araujo',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.settings)),
              )
            ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(26),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Seu saldo',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'R\$ 1.000,00',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}