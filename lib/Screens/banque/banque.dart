import 'package:flutter/material.dart';

class banque_screen extends StatelessWidget {
  const banque_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
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
            const Text(
              "Lier votre banque ou MFI",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Rechercher',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.account_balance,
                    color: Color.fromRGBO(86, 86, 86, 1),
                  ),
                  onPressed: () {},
                  label: const Text(
                    'Banque',
                    style: TextStyle(color: Color.fromRGBO(86, 86, 86, 1)),
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color.fromRGBO(229, 229, 229, 1),
                    ),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.savings,
                    color: Color.fromRGBO(86, 86, 86, 1),
                  ),
                  onPressed: () {},
                  label: const Text(
                    'MFI',
                    style: TextStyle(color: Color.fromRGBO(86, 86, 86, 1)),
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color.fromRGBO(229, 229, 229, 1),
                    ),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              height: 100,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10),
                    child: Text(
                      'Banque',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(children: [
                      Image.asset(
                        'assets/images/Uba.png',
                        height: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'UBA',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
