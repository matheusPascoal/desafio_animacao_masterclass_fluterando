// ignore_for_file: prefer_const_constructors

import 'package:desafio_animacao_masterclass_fluterando/generic_box.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          Image.network(
            'https://cdn.discordapp.com/attachments/979833280155230273/997933238473457674/logo.png',
            height: 110,
            width: 110,
          ),
          const SizedBox(
            height: 40,
          ),
          Form(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {}, child: const Text('Esqueci minha senha')),
              const SizedBox(
                width: 35,
              ),
              //
              //
              GestureDetector(
                onTap: () {
                  final snackBar = SnackBar(
                    content: Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Color(0XffB3261E),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        'Erro no Login',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 3),
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color(0Xff6750A4),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      'ENTRAR',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            color: Color(0Xff6750A4),
            height: 2,
            width: 130,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GenericBox(
                color: const Color(0XffEA4335),
              ),
              GenericBox(
                color: const Color(0Xff1977F3),
              ),
              GenericBox(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
          const SizedBox(
            height: 120,
          ),
          Text(
            'Copyright © Masterclass 2022',
            style: TextStyle(color: Color(0Xff707070)),
          )
        ]),
      ),
    );
  }
}
