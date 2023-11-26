
import 'package:flutter/material.dart';
import 'package:project_uts_mobile/ui_view/data_mhs.dart';
import 'package:project_uts_mobile/ui_view/form_mhs.dart';
import 'package:project_uts_mobile/ui_view/grid_view.dart';
import 'package:project_uts_mobile/ui_view/profil.dart';


void main() => runApp(Beranda());



  class Beranda extends StatefulWidget {
      const Beranda({ Key? key }) : super(key: key);
    
      @override
      _HomePageState createState() => _HomePageState();
    }
    
    class _HomePageState extends State<Beranda> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("MY CAMPUS"),
            backgroundColor: Colors.deepPurple,
          ),
          
         body: ListView.builder(
              // itemcount adalah total panjang data yang ingin ditampilkan
              itemCount: 15,
    
              // itembuilder adalah bentuk widget yang akan ditampilkan, wajib menggunakan 2 parameter.
              itemBuilder: (context, index){
    
                //padding digunakan untuk memberikan jarak bagian atas listtile agar tidak terlalu mepet
                //menggunakan edgeInsets.only untuk membuat jarak hanya pada bagian atas saja
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 20, 
                  ),
    
                  //listtile adalah widget yang disediakan flutter berisi 3 properti yang kita pakai
                  //properti: leading, title, dan subtitle. di dalam setiap properti kalian bebas melakukan customisasi
                  child: ListTile(
                    leading: Image.network(
                      "https://i1.wp.com/susebershop.com/wp-content/uploads/2015/10/SEKOLAH-TINGGI-TEKNOLOGI-BANDUNG-768x768.png?ssl=1", 
                    ),
                    title: Text(
                      "SEKOLAH TINGGI TEKNOLOGI BANDUNG", 
                      maxLines: 1, 
                      overflow: TextOverflow.ellipsis, 
                    ),
                    subtitle: Text(
                      'STTB Bandung adalah sebuah Kampus swasta yang memiliki 3 Fakultas yaitu Teknik Informatika,Teknik Industri dan Desain', 
                      maxLines: 2, 
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              }, 
            ),
          //memberikan button garis tiga disebelah kiri appbar
          //jika ditekan akan menjalankan widget builddrawer
          drawer: Drawer(
          //membuat list, 
          //list digunakan untuk melakukan scrolling jika datanya terlalu panjang
          child: ListView(
            padding: EdgeInsets.zero,
            //di dalam listview ini terdapat beberapa widget drawable
            children: [
              UserAccountsDrawerHeader(
                //membuat gambar profil
                currentAccountPicture: Image(
                  image: NetworkImage("https://th.bing.com/th/id/OIP.audMX4ZGbvT2_GJTx2c4GgHaHw?rs=1&pid=ImgDetMain")
                ),
                //membuat nama akun
                accountName: Text("Pengguna"), 
                //membuat nama email
                accountEmail: Text("ig: teknikinformatia@gmail.com"),
                //memberikan background
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://1.bp.blogspot.com/-NSD9xKwai14/XjvdtwVF7eI/AAAAAAAABTQ/P8Y-PKTOd9Qlh0LGRhHKXbayp50drBIbACLcBGAsYHQ/w1200-h630-p-k-no-nu/kampus%2Bsekolah%2Btinggi%2Bteknologi%2Bbandung.jpg"), 
                    fit: BoxFit.cover
                  )
                ),
              ), 
              //membuat list menu
              ListTile( leading: Icon(Icons.home), title: Text("Beranda"), onTap: ()  {
                Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Beranda()));
              },),
              ListTile( leading: const Icon(Icons.people), title: const Text("Mahasiswa"), onTap: (){
                 Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Mahasiswa()));
              },),
              ListTile( leading: const Icon(Icons.people), title: const Text("Tambah Mahasiswa"), onTap: (){
                 Navigator.push(
                   context, MaterialPageRoute(builder: (context) => form_mhs()));
              },), 
              ListTile( leading: Icon(Icons.newspaper), title: Text("Berita"), onTap: (){
                Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Grid()));
              },), 
             
             
              ListTile( leading: Icon(Icons.info), title: Text("Tentang"), onTap: (){
                 Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Profil()));
              },), 
            ],
          ),
        ), 
        );
      }
    }
    
    //widget ini adalah isi dari sidebar atau drawer
   