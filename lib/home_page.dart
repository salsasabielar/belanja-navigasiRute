import 'package:navigasi_rute/item_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Brightening Face Toner',
        price: 42000,
        image: Image.network(
            'http://image.femaledaily.com/dyn/640/images/prod-pics/product_1588234007_tonerrdd_800x800.jpg')),
    Item(
        name: 'Brightening Face Serum',
        price: 75000,
        image: Image.network(
            'http://image.femaledaily.com/dyn/640/images/prod-pics/product_1588235837_serum_2_800x800.jpg')),
    Item(
        name: 'Brightening Facial Wash',
        price: 34000,
        image: Image.network(
            'https://static.femaledaily.com/dyn/200/images/prod-pics/product_1588236803_facial_was_800x800.jpg')),
    Item(
        name: 'Brightening Night Cream',
        price: 64000,
        image: Image.network(
            'https://static.femaledaily.com/dyn/200/images/prod-pics/product_1588236656_night_crea_800x800.jpg')),
    Item(
        name: 'Brightening Day Cream',
        price: 59000,
        image: Image.network(
            'https://static.femaledaily.com/dyn/200/images/prod-pics/product_1588236368_day_creaam_800x800.png')),
    Item(
        name: 'Underarm Cream',
        price: 65000,
        image: Image.network(
            'https://static.femaledaily.com/dyn/200/images/prod-pics/product_1588234492_underarm_c_800x800.jpg')),
    Item(
        name: 'Mugwort Pore Clarifying Mask',
        price: 75000,
        image: Image.network(
            'https://images.soco.id/212-Whitelab-Mugwort-Pore-Clarifying-Mask.jpg.jpg'))
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "whitelab",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemPage(newItem: item)));
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
