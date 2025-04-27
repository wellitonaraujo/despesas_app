import 'dart:math';

import 'package:despesas_app/data/data.dart';
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
                    width: 40,
                    height: 40,
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Icon(CupertinoIcons.person_fill, color: Colors.black,)
                ],
              ),
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
                child: IconButton(onPressed: () {}, 
                icon: Icon(CupertinoIcons.bell_fill, 
                color: Theme.of(context).colorScheme.onSecondary, size: 30,
                )),
              )
            ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
              ],
              transform: const GradientRotation(pi / 4),
              ),
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Seu saldo", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                ),
                Text("R 1000", style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                      children: [
                       Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                       child: const Center(
                         child: Icon(
                           CupertinoIcons.arrow_down,
                           size: 12,
                           color: Colors.red,
                         ),
                       ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Despesas" , style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),),
                          Text("R 1000", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),),
                          ],
                          ),
                        ],
                      ),
                    Row(
                      children: [
                       Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                       child: const Center(
                         child: Icon(
                           CupertinoIcons.arrow_down,
                           size: 12,
                           color: Colors.green,
                         ),
                       ),
                      ),
                       SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Income" , style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),),
                          Text("R 850", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),),
                          ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ultimas transações", style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              ),
              GestureDetector(
                onTap: () => {
                 
                },
                child: Text("Ver todas", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: transactionsData.length,
              itemBuilder: (context, int i) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: transactionsData[i]['color'],
                                    ),
                                  ),
                                  Icon(
                                    Icons.coffee, color: 
                                    Colors.white, size: 18,
                                    ),
                                ],
                              ),
                              SizedBox(width: 12),
                              Text(transactionsData[i]['name'], style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              ),
                            ],
                          ),
                          Column(
                           
                            children: [
                              Text(transactionsData[i]['totalBalance'], style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              ),
                              Text(transactionsData[i]['date'], style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
            ),
          )
          ],
        ),
      ),
    );
  }
}