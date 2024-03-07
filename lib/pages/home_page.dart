import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';
import 'package:navigasi/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List <Item> items = [
    Item(
      name: 'Sugar' , 
      price: 5000, 
      description: 'Ini adalah gula yang manis', 
      image: 'https://hips.hearstapps.com/hmg-prod/images/best-sugar-substitute-1660364690.jpg'
      ),
    Item(
      name: 'Salt',  
      price: 2000,
      description: 'Ini adalah garam',
      image: 'https://www.bendsoap.com/cdn/shop/articles/Sea_Salt_Blog_Header_1.png?v=1663422248'
      ),
    Item(
      name: 'Corn', 
      price: 3000,
      description: 'Jagung Manis seperti senyumanmu',
      image: 'https://awsimages.detik.net.id/community/media/visual/2023/04/05/manfaat-makan-jagung-manis.jpeg?w=1200'
      ),
    Item(
      name: 'Chili Oil', 
      price: 6000,
      description: 'Sambal khas yang menjadi bumbu pelengkap wajib masakan di Sichuan China atau daerah Asia Timur.',
      image: 'https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/07/chili-oil.jpg?fit=1500%2C1125&ssl=1'
      ),
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Product"),
        leading: Icon(Icons.shopping_basket, color: const Color.fromARGB(255, 255, 255, 255)),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        ),
      body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {

final item = items[index];
return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(item.image),
                    ),
                    title: Text(
                      item.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(item.description),
                    trailing: Text(item.price.toString()),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemPage(item: items[index]),
                        ),
                      );
                    },
                  ),
                );
              }),
        ));
  }
}