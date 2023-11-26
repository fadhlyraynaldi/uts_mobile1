    
    


    import 'package:flutter/material.dart';

    void main() {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Grid(),
      ));
    }
    
    class Grid extends StatefulWidget {
      const Grid({Key? key}) : super(key: key);
    
      @override
      __myGridview createState() => __myGridview();
    }
    
    class __myGridview extends State<Grid> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text("Berita Terupdate"),
          ),
          
          body: GridView.count(
            //widget yang akan ditampilkan dalam 1 baris adalah 2
            crossAxisCount: 2,
            children: [
              //card ditampilkan disini
              //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
              CustomCard(title: "News 1", image: "https://cdn.pixabay.com/photo/2018/02/01/14/09/yellow-3123271_960_720.jpg"),
              CustomCard(title: "News 2", image: "https://cdn.pixabay.com/photo/2016/08/27/14/38/mountains-1624284__340.jpg"),
              CustomCard(title: "News 3", image: "https://cdn.pixabay.com/photo/2016/11/29/02/23/cliffs-1866832__340.jpg"),
              CustomCard(title: "News 4", image: "https://cdn.pixabay.com/photo/2016/09/18/23/23/sugarloaf-mountain-1679285__340.jpg"),
            ],
          ),
        );
      }
    }
    
    //membuat customcard yang bisa kita panggil setiap kali dibutuhkan
    class CustomCard extends StatelessWidget {
    
      //ini adalah konstruktor, saat class dipanggil parameter konstruktor wajib diisi
      //parameter ini akan mengisi title dan gambar pada setiap card
      CustomCard({required this.title, required this.image});
    
      String title;
      String image;
    
      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Card(
            //menambahkan bayangan
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(title),
                )
              ],
            ),
          ),
        );
      }
    }