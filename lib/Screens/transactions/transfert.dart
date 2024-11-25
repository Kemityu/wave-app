import 'package:flutter/material.dart';

class TransfertScreen extends StatelessWidget {
  const TransfertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste de contacts favoris
    final List<Map<String, String>> favoris = [
      {'name': 'Ludovic', 'phone': '07 68 71 51 26'},
      {'name': 'JM', 'phone': '07 69 68 29 51'},
      {'name': 'Manager', 'phone': '06 12 34 56 78'},
      {'name': 'Ingenieur', 'phone': '06 98 76 54 32'},
      {'name': 'Keane', 'phone': '07 89 65 43 21'},
    ];

    // Liste des contacts
    final List<Map<String, String>> contacts = [
      {"name": "Koffi Kouadio", "phone": "07 45 62 13 87"},
      {"name": "Ahoua Yao", "phone": "07 21 54 38 92"},
      {"name": "Dago Sanogo", "phone": "07 38 96 51 27"},
      {"name": "Amani Koné", "phone": "07 87 62 45 19"},
      {"name": "Bamba Fofana", "phone": "07 29 48 36 70"},
      {"name": "Kouassi Kobenan", "phone": "07 64 28 37 50"},
      {"name": "Zoumana Ouattara", "phone": "07 56 92 18 34"},
      {"name": "Béatrice N'dri", "phone": "07 39 45 62 80"},
      {"name": "Sery Bahi", "phone": "07 25 63 41 98"},
      {"name": "Bakayoko Fanta", "phone": "07 72 54 61 20"},
      {"name": "Adjoua Akissi", "phone": "07 35 48 29 61"},
      {"name": "Traoré Amadou", "phone": "07 49 28 73 95"},
      {"name": "Toure Salif", "phone": "07 81 94 25 67"},
      {"name": "Blé Joseph", "phone": "07 52 63 47 80"},
      {"name": "N’goran Kouamé", "phone": "07 63 47 81 52"},
      {"name": "Soro Ibrahim", "phone": "07 19 56 34 91"},
      {"name": "Loukou Rosine", "phone": "07 37 45 28 64"},
      {"name": "Diomandé Abdoulaye", "phone": "07 83 24 56 90"},
      {"name": "Tano Mireille", "phone": "07 54 36 21 78"},
      {"name": "Kouadio Marcel", "phone": "07 41 29 53 87"},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              "Envoyer de l'argent",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
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
                fillColor: Colors.white,
                labelText: 'À',
                filled: true,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.add_circle_rounded,
                      color: Colors.blue,
                      size: 50,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      'Saisir un nouveau numéro',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(
                      Icons.qr_code_scanner_outlined,
                      color: Colors.blue,
                      size: 50,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      'Scanner pour envoyer',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Favoris',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                // La liste des favoris
                ...favoris.map((contact) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: const Icon(Icons.person),
                    ),
                    title: Text(
                      contact['name']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(contact['phone']!),
                  );
                }).toList(),
                const SizedBox(height: 20),
                const Text(
                  'Contacts',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                // La liste des contacts
                ...contacts.map((contact) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: const Icon(Icons.person),
                    ),
                    title: Text(
                      contact['name']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(contact['phone']!),
                  );
                }).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
