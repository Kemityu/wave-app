import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart'; // Pour générer des montants et des dates aléatoires

class CoffreScreen extends StatelessWidget {
  const CoffreScreen({super.key});

  // Méthode pour générer 30 transactions avec des données variées
  List<Map<String, dynamic>> generateTransactions() {
    List<Map<String, dynamic>> transactions = [];
    Random random = Random();

    for (int i = 0; i < 30; i++) {
      bool isDeposit =
          random.nextBool(); // Détermine si c'est un dépôt ou un retrait
      transactions.add({
        'type': isDeposit ? 'Transfert vers coffre' : 'Transfert depuis coffre',
        'icon':
            isDeposit ? Icons.add_circle_rounded : Icons.remove_circle_rounded,
        'iconColor': isDeposit ? Colors.grey : Colors.pink,
        'date':
            '${random.nextInt(28) + 1} sept.', // Génère une date entre le 1 et le 28 septembre
        'amount': isDeposit
            ? '+${random.nextInt(5000) + 5000}F'
            : '-${random.nextInt(5000) + 5000}F',
      });
    }

    return transactions;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> transactions = generateTransactions();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 244, 246, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(243, 244, 246, 1),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 50),
            const Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromRGBO(255, 223, 241, 1),
                  child: Icon(
                    Icons.lock,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  "Coffre",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
                text: '17.420',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'F',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 23,
                    ),
                  )
                ]),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: Icon(
                  Icons.add_circle_rounded,
                  color: Colors.white.withOpacity(0.8),
                ),
                onPressed: () {},
                label: const Text(
                  'Garder',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(29, 200, 254, 1),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.remove_circle,
                  color: Colors.white.withOpacity(0.8),
                ),
                onPressed: () {},
                label: const Text(
                  'Récuperer',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(29, 200, 254, 1),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    final transaction = transactions[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(transaction['icon'],
                              color: transaction['iconColor'], size: 30),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transaction['type'],
                                style: const TextStyle(
                                  color: Color.fromRGBO(35, 9, 162, 1),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(transaction['date']),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            transaction['amount'],
                            style: const TextStyle(
                              color: Color.fromRGBO(35, 9, 162, 1),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
