import 'package:bangun_datar_fasha_b/persegi_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Color(0xFF1B1212),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>PersegiPage()));


    },

                child: CustomMenu(imageAsset: "assets/persegi23.jpeg",title: "Persegi",)),


              ),
              Expanded(child: CustomMenu(imageAsset: "assets/segitiga-2.png",title: "Segitiga",)),
            ],
          ),

          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegi-panjang.png",title: "Persegi Panjang",)),
              Expanded(child: CustomMenu(imageAsset: "assets/lingkaran-23.png",title: "Lingkaran",)),
            ],
          ),

        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      color: Colors.black12,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        children: [
          Image.asset(imageAsset, height: 100,),
          Text(
           title,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
