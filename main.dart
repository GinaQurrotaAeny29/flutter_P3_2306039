import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Toko Onlineku",
            style: TextStyle(
              fontSize: 20,
              fontWeight: .bold,
              color: Colors.white
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children:[
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 10,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/200/300',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Hai Jhon, Selamat datang!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: .bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    //background image
                    Image.network(
                      'https://picsum.photos/400/200',
                      fit: BoxFit.cover,
                      width: .infinity,
                      colorBlendMode: BlendMode.darken,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        'FLASH SALE UP TO 50%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "Baju",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "Celana",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "Sepatu",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GridView.count(
                  crossAxisCount: 2, //number of column
                  mainAxisSpacing: 10, //space between rows
                  crossAxisSpacing: 10, //space between column
                  shrinkWrap: true, //optional
                  children: [
                    Card(
                      child: Column(
                        children:[
                          Image.network(
                            'https://picsum.photos/id/20/200/300',
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 200,
                          ),
                          Text("Stationery"),
                          Text("Rp. 5000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children:[
                          Image.network(
                            'https://picsum.photos/id/21/200/300',
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 200,
                          ),
                          Text("High Heels"),
                          Text("Rp. 2.000.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children:[
                          Image.network(
                            'https://picsum.photos/id/30/200/300',
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 200,
                          ),
                          Text("Cangkir"),
                          Text("Rp. 15000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children:[
                          Image.network(
                            'https://picsum.photos/id/34/200/300',
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 200,
                          ),
                          Text("Tong"),
                          Text("Rp. 15000"),
                        ],
                      ),
                    ),
                  ],
                ),
              ]    
              
            )
          )
        )
      ),
    );
  }
}