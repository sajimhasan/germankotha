import 'package:flutter/material.dart';
import 'package:germankotha1/UI/page-13.dart';
import 'package:germankotha1/UI/page-15.dart';
import 'package:germankotha1/UI/vocabolari.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Lessons",style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.grey[300], size: 28),
              const SizedBox(width: 8),
              ...List.generate(4, (index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Icon(Icons.favorite, color: Colors.red, size: 28),
              )),
            ],
          ),

          SizedBox(height: 20,),
          Stack(
              children: [
                Container(
                    height: 129,
                    width: 343,
                    decoration:BoxDecoration(
                        color: Colors.grey,borderRadius: BorderRadius.circular(20)
                    ),
                    child: Image.asset("image/12.png",fit: BoxFit.contain,)),]
          ),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Vocabolari()));
              },
              child: Image.asset("image/11.png")),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Page15()));
              },
              child: Image.asset("image/9.png")),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Page13()));
              },
              child: Image.asset("image/10.png"))
        ],
      ),
    );
  }
}
