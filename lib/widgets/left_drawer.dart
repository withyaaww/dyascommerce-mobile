import 'package:flutter/material.dart';
import 'package:dyas_commerce/screens/menu.dart';
import 'package:dyas_commerce/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
           decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
    ),
    child: const Column(
      children: [
        Text(
          'DYAS FLOWERS',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Text(
          "Ayo belii produk-produk terbaik dari Dyas Flowers!",
          //Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    ),
          ),
            ListTile(
    leading: const Icon(Icons.home_outlined),
    title: const Text('Halaman Utama'),
    // Bagian redirection ke MyHomePage
    onTap: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    },
  ),
  ListTile(
    leading: const Icon(Icons.shopping_bag),
    title: const Text('Tambah Product'),
    // Bagian redirection ke MoodEntryFormPage
    onTap: () {
      //membuat routing ke halaman MoodEntryFormPage
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductEntryFormPage(),
          ));
      

      
      
    },
  ),
  ListTile(
    leading: const Icon(Icons.add_reaction_rounded),
    title: const Text('Daftar Product'),
    onTap: () {
        // Route menu ke halaman mood
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
        );
    },
),
        ],
      ),
    );
  }
}