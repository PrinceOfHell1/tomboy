import 'package:flutter/material.dart';

class sword extends StatefulWidget {
  const sword({Key? key}) : super(key: key);

  @override
  State<sword> createState() => _swordState();
}

class _swordState extends State<sword> {
  double durasiLagu = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Muston", style: TextStyle(fontWeight: FontWeight.w400),),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
               Colors.grey,
                Colors.black87
              ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 280,
              height: 280,
              decoration:  BoxDecoration(
                color: Colors.black87,
                image: new DecorationImage(
                    image: NetworkImage("https://t2.genius.com/unsafe/409x409/https%3A%2F%2Fimages.genius.com%2F03e623db0b7cf04720c3a4830290b1f3.1000x1000x1.jpg")),
                borderRadius: BorderRadius.circular(15)
              ),
            ),

            SizedBox(height: 25,),
            
            Text("Discord",style: TextStyle(color: Colors.white70, fontSize: 18),),
            Text("The Living Tombstone",style: TextStyle(color: Colors.white70, fontSize: 18),),

            Slider(
                value: durasiLagu,
                onChanged: (double value){
                  durasiLagu = value;
                }),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                        shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Icon(Icons.play_arrow),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Icon(Icons.pause),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Icon(Icons.stop),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
