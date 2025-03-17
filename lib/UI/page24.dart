import 'package:flutter/material.dart';

class page24 extends StatelessWidget {
  const page24({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "German Kotha",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: CircleAvatar(
          child: IconButton(onPressed: (){
            Navigator.pop(context);

          }, icon: Icon(Icons.arrow_back_ios))
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "image/40.png",
              height: 400,
              width: 3420,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  custombuttonforpage(
                      iconname: "Home", name: Icons.home, ontap: () {}),
                      SizedBox(height: 10,),
                       custombuttonforpage(
                      iconname: "About", name:Icons.info_outline_rounded, ontap: () {}),
                      SizedBox(height: 10,),
                       custombuttonforpage(
                      iconname: "Service", name: Icons.miscellaneous_services_rounded, ontap: () {}),
                      SizedBox(height: 10,),
                       custombuttonforpage(
                      iconname: "Website", name: Icons.language, ontap: () {}),
                      SizedBox(height: 10,),
                       custombuttonforpage(
                      iconname: "Share", name: Icons.share, ontap: () {}),
                      SizedBox(height: 10,),
                       custombuttonforpage(
                      iconname: "Cunnect us ", name: Icons.phone, ontap: () {}),
                      SizedBox(height: 10,),
                      
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class custombuttonforpage extends StatelessWidget {
  final IconData name;
  final String iconname;
  final VoidCallback ontap;
  const custombuttonforpage(
      {super.key,
      required this.iconname,
      required this.name,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Icon(
                name,
                color: Colors.grey,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                iconname,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              const Spacer(),
              Icon(Icons.arrow_forward_ios_rounded),
              SizedBox(width: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
