import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

class ItemPage extends StatelessWidget {
  final item;
  const ItemPage({Key? key, this.item}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),
        backgroundColor: Colors.pinkAccent,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.network(
                item.image,
                width: 2000,
                height: 500,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20,),
              Text(item.name, 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold),),
                SizedBox(height: 12,),
              Text(item.description),
              SizedBox(height: 20,),
              const Row(children: [
                    const Icon(Icons.star,
                        color: Color.fromARGB(238, 255, 218, 10)),
                    const Icon(Icons.star,
                        color: Color.fromARGB(238, 255, 218, 10)),
                    const Icon(Icons.star,
                        color: Color.fromARGB(238, 255, 218, 10)),
                    const Icon(Icons.star,
                        color: Color.fromARGB(238, 255, 218, 10)),
                    const Icon(Icons.star,
                        color: Color.fromARGB(238, 255, 218, 10)),    
                        SizedBox(width: 10,),
                                            Text(
                      "0,5",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(239, 0, 0, 0)),
                    ),
              ]),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 232, 232, 232),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Deskripsi' ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 20,),
                  Text('Chili oil atau minyak cabai, merupakan kondimen yang sering dijumpai di restoran-restoran chinese food, untuk menambahkan rasa pedas dan gurih pada makanan. Selain itu, menambahkan chili oil pada hidangan, akan meningkatkan aroma yang khas pada makanan di dalam chinesee food', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
                ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Category', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 15,),
              Row(
                children: [
                   Chip(label: 
              const Text("Berbayar", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              backgroundColor: Colors.pinkAccent,
              ),
              SizedBox(width: 12,),
              Chip(label: 
              const Text("Free ongkir", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              backgroundColor: Colors.pinkAccent,
              ),
              SizedBox(width: 12,),
              Chip(label: 
              
              const Text("Garansi segar", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              backgroundColor: Colors.pinkAccent,
              
              ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
             ElevatedButton(
    onPressed: () {},
    child: Text('Beli sekarang'),
    style: ElevatedButton.styleFrom(
      primary: Colors.pinkAccent,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 700),
      shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20)), 
    ),
  ),
  ]),
          ),
        );
  }
}