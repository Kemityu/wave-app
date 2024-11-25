import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waveapp/Screens/banque/banque.dart';
import 'package:waveapp/Screens/coffre/coffre_screen.dart';
import 'package:waveapp/Screens/settings/settings_screen.dart';
import 'package:waveapp/Screens/transactions/transfert.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = true;
  List<Transaction> transactions = [];

  @override
  void initState() {
    super.initState();
    transactions = generateTransactions();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(75, 66, 221, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(75, 66, 221, 1),
          title: Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsScreen()));
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                const Spacer(flex: 3),
                RichText(
                  text: TextSpan(
                    text: isVisible ? '••••••' : '17.420',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                    children: isVisible
                        ? <TextSpan>[]
                        : [
                            TextSpan(
                              text: 'F',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 23,
                              ),
                            )
                          ],
                  ),
                ),
                const SizedBox(width: 2),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: Icon(
                    isVisible
                        ? Icons.visibility_off_sharp
                        : Icons.visibility_sharp,
                    color: Colors.white,
                  ),
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: const Color.fromRGBO(75, 66, 221, 1),
                      width: screenWidth,
                      height: 300,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: screenWidth,
                              height: 200,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 100),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 0, top: 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TransfertScreen()),
                                            );
                                          },
                                          child: const Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 25,
                                                backgroundColor: Color.fromRGBO(
                                                    222, 229, 255, 1),
                                                child: Icon(Icons.person_3),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                'Transfert',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundColor: Color.fromRGBO(
                                                  255, 248, 209, 1),
                                              child: Icon(
                                                Icons.shopping_cart_rounded,
                                                color: Color.fromARGB(
                                                    255, 254, 215, 95),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Paiement',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      banque_screen()),
                                            );
                                          },
                                        child: const Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundColor: Color.fromRGBO(
                                                  255, 239, 239, 1),
                                              child: Icon(
                                                Icons.account_balance,
                                                color: Color.fromARGB(
                                                    255, 246, 139, 176),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Banque',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CoffreScreen()),
                                            );
                                          },
                                        child: const Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundColor: Color.fromRGBO(
                                                  255, 223, 241, 1),
                                              child: Icon(
                                                Icons.lock,
                                                color: Colors.pink,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Coffre',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/images/backg.png',
                        height: 200,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: screenWidth,
                  height: 10,
                  color: const Color.fromRGBO(241, 241, 241, 1),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: transactions.length,
                        itemBuilder: (context, index) {
                          return TransactionItem(
                            transaction: transactions[index],
                          );
                        },
                      ),
                      Container(
                        width: 125,
                        height: 25,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(222, 229, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Color.fromRGBO(35, 9, 162, 1),
                              ),
                              Text(
                                'Rechercher',
                                style: TextStyle(
                                    color: Color.fromRGBO(35, 9, 162, 1)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  TransactionItem({required this.transaction});

  @override
  Widget build(BuildContext context) {
    String description;

    if (transaction.type == "depot") {
      description = "Dépôt";
    } else if (transaction.type == "retrait") {
      description = "Retrait";
    } else if (transaction.type == "transfert") {
      description = transaction.amount > 0
          ? "Transfert de ${transaction.name}"
          : "Transfert à ${transaction.name}";
    } else {
      description = transaction.name; // Cas par défaut
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: const TextStyle(
                  color: Color.fromRGBO(35, 9, 162, 1),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${transaction.date.day}/${transaction.date.month}/${transaction.date.year}, ${transaction.date.hour}:${transaction.date.minute.toString().padLeft(2, '0')}', // Convertir DateTime en String
              ),
            ],
          ),
          Text(
            '${transaction.amount}F',
            style: const TextStyle(
              color: Color.fromRGBO(35, 9, 162, 1),
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Transaction {
  final String name;
  final String type;
  final int amount;
  final DateTime date;

  Transaction({
    required this.name,
    required this.type,
    required this.amount,
    required this.date,
  });
}

List<Transaction> generateTransactions() {
  return [
    Transaction(
        name: "Kouadio",
        type: "depot",
        amount: 10000,
        date: DateTime(2023, 9, 1)),
    Transaction(
        name: "Ahoua",
        type: "retrait",
        amount: -1000,
        date: DateTime(2023, 9, 2)),
    Transaction(
        name: "Konan",
        type: "transfert",
        amount: -1000,
        date: DateTime(2023, 9, 3)),
    Transaction(
        name: "Adjoua",
        type: "depot",
        amount: 1000,
        date: DateTime(2023, 9, 4)),
    Transaction(
        name: "Yao",
        type: "retrait",
        amount: -1000,
        date: DateTime(2023, 9, 5)),
    Transaction(
        name: "Koffi",
        type: "transfert",
        amount: -1000,
        date: DateTime(2023, 9, 6)),
    Transaction(
        name: "Aya", type: "depot", amount: 17500, date: DateTime(2023, 9, 7)),
    Transaction(
        name: "Amoin",
        type: "retrait",
        amount: -1000,
        date: DateTime(2023, 9, 8)),
    Transaction(
        name: "Gnagne",
        type: "transfert",
        amount: -1000,
        date: DateTime(2023, 9, 9)),
    Transaction(
        name: "N'Guessan",
        type: "depot",
        amount: 1000,
        date: DateTime(2023, 9, 10)),
    Transaction(
        name: "Akissi",
        type: "retrait",
        amount: -1000,
        date: DateTime(2023, 9, 11)),
    Transaction(
        name: "Bamba",
        type: "transfert",
        amount: -1000,
        date: DateTime(2023, 9, 12)),
    Transaction(
        name: "Bakayoko",
        type: "depot",
        amount: 1000,
        date: DateTime(2023, 9, 13)),
    Transaction(
        name: "Tano",
        type: "retrait",
        amount: -1000,
        date: DateTime(2023, 9, 14)),
    Transaction(
        name: "Loukou",
        type: "transfert",
        amount: -1000,
        date: DateTime(2023, 9, 15)),
    Transaction(
        name: "Bedi", type: "depot", amount: 1000, date: DateTime(2023, 9, 16)),
    Transaction(
        name: "Kouassi",
        type: "retrait",
        amount: -1000,
        date: DateTime(2023, 9, 17)),
    Transaction(
        name: "Traoré",
        type: "transfert",
        amount: -1000,
        date: DateTime(2023, 9, 18)),
    Transaction(
        name: "Djedje",
        type: "depot",
        amount: 1000,
        date: DateTime(2023, 9, 19)),
    Transaction(
        name: "Gohou",
        type: "retrait",
        amount: -1000,
        date: DateTime(2023, 9, 20)),
  ];
}
