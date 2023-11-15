// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:product_list/login_page.dart';

class listProduct extends StatefulWidget {
  const listProduct({Key? key}) : super(key: key);

  @override
  State<listProduct> createState() => _listProductState();
}

class _listProductState extends State<listProduct> {
  final List<Map<String, dynamic>> dummyProducts = [
    {'name': 'Bando 08', 'price': '2.000'},
    {'name': 'Bando 2 cagak', 'price': '3.000'},
    {'name': 'Bando 20 DN', 'price': '1.000'},
    {'name': 'Bando 3 daun', 'price': '2500'},
    {'name': 'Bando 45 bunga', 'price': '6.000'},
    {'name': 'Bando 63 ayam', 'price': '9.500'},
    {'name': 'Bando 83 kucing', 'price': '5.000'},
    {'name': 'Bando 25 sapi', 'price': '4.500'},
    {'name': 'Bando 99 burung', 'price': '7.000'},
    {'name': 'Bando 12 unicorn', 'price': '3.500'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('List Data Produk'),
        actions: [
          InkWell(
            splashColor: Colors.grey,
            onTap: () => print("Container pressed"),
            child: IconButton(
              onPressed: () {
                // Logika refresh
                setState(() {
                  // Lakukan aksi refresh, jika diperlukan
                });
              },
              icon: Icon(Icons.refresh),
            ),
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    LoginPage(), // Kembali ke halaman sebelumnya
              ),
            );
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: EdgeInsets.all(3.0),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 22),
                labelText: 'Filter Products',
                enabledBorder: InputBorder.none,
                suffixIcon: IconButton(
                  padding: EdgeInsets.only(right: 22, left: 22),
                  icon: Icon(Icons.close),
                  onPressed: () {
                    // Logika untuk mengosongkan teks pada TextField
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: dummyProducts.length,
        itemBuilder: (BuildContext context, int index) {
          final productPrice = dummyProducts[index]['price'] as String;
          return Container(
            width: double.infinity,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  (index + 1).toString(),
                  style: TextStyle(fontSize: 13),
                ),
              ),
              contentPadding: EdgeInsets.only(left: 8, right: 19),
              title: Text(
                dummyProducts[index]['name'] as String,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text('Price: Rp. $productPrice'),
              ),
              trailing: IconButton(
                padding: EdgeInsets.only(left: 21, right: 21),
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {
                  // Logika untuk menghapus item produk
                  setState(() {
                    // Hapus item dari list produk
                    dummyProducts.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Color.fromARGB(255, 255, 110, 190),
            onPressed: () {
              // Logika untuk menambah produk
              // Misalnya, buka halaman tambah produk atau tampilkan dialog
            },
            child: Icon(Icons.add),
            tooltip: 'Add Product',
          ),
        ],
      ),
    );
  }
}
