import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '/my_box.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //return button, menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: MyBox(child: Icon(Icons.arrow_back)),
                    ),
                    Text("P L A Y   L I S T"),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: MyBox(
                        child: Icon(Icons.menu),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                //art,song name , artist name
                SizedBox(
                    child: MyBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            "images/music2.jpg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Arijit singh",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:Color.fromARGB(255, 110, 107, 107),
                                        fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Kesariya Tera",
                                  style: TextStyle(
                                        fontSize: 18,
                                        
                                        fontWeight: FontWeight.bold,
                                        ),
                                  )
                                ],
                              ),
                              SizedBox(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 35,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
                SizedBox(height: 25,),

                //start time,shuffle button, repeat button, end time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("4:20"),
                  ],
                ),
                SizedBox(height: 25,),


                //linear bar
                 MyBox(
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      percent: 0.7,
                      progressColor: Colors.green,
                      backgroundColor: Colors.transparent,
                  
                  
                    ),
                  ),
                  SizedBox(height: 25,),



                //previous song,play pause button, next song
                SizedBox(
                  height: 80,
                  child: Row(
                    
                    children: [
                
                    Expanded(child: MyBox(child: Icon(Icons.skip_previous,size: 35,),)),
                    Expanded(
                      flex: 2,
                      
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10),
                        child: MyBox(child: Icon(Icons.play_arrow,size: 35,),),
                      )),
                    Expanded(child: MyBox(child: Icon(Icons.skip_next,size: 35,),)),
                  ],),
                )
              ],
            ),
          ),
        ));
  }
}
