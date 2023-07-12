import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  final String imgPath; // imgPath değişkeninin türünü belirtin

  Detay(this.imgPath); // Key parametresini ekleyin

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(left: 15,right: 15,bottom: 15,child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: 4,
          child: Container(
            height: 205,
            width: MediaQuery.of(context).size.width-30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                        image: DecorationImage(image: AssetImage('assets/dress.jpg'),fit: BoxFit.contain)
                      ),
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('LAMINATED',style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.08),),
                        SizedBox(height: 5,),
                        Text('Louis Vuitton',style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04,color: Colors.grey),),
                        SizedBox(height: 10,),
                        Container(width: MediaQuery.of(context).size.width*0.5,child: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. ''',style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.grey),)),
                  
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('₺'+'6500',style:TextStyle(fontSize: MediaQuery.of(context).size.width*0.07,),),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.brown.withOpacity(0.9),shape: BoxShape.circle),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    )
                  ],
                ),
              )
              ],
            ),
          ),
        ),),
        Positioned(top: MediaQuery.of(context).size.height/2,
        
        left: 100,
        child: Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Center(child: Text('LAMINATED', style:  TextStyle(fontSize: 13,color: Colors.white),)),
              Icon(Icons.arrow_forward_ios,color: Colors.white,),
            ],
          ),
        ),
        )
      ],
    ));
  }
}
