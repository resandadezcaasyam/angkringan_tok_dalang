import 'package:angkringan_tok_dalang/screens/shoplist_form.dart';
import 'package:angkringan_tok_dalang/widgets/left_drawer.dart';
import 'package:flutter/material.dart';
// Sesuaikan dengan lokasi file main.dart atau sesuaikan impor sesuai kebutuhan


class ProductListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Daftar Makanan Yang Dipesan'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: ProductList.products.length,
        itemBuilder: (context, index) {
          var product = ProductList.products[index];
          return Card(
            elevation: 3, // Ketinggian shadow card
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    'Harga: ${product.price}',
                    style: const TextStyle(
                      color: Colors.indigo,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Deskripsi: ${product.description}',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


