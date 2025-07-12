import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  bool isPlaying = false;
  int duration = 0;
  @override
  Widget build(BuildContext context) {
    return 
       isPlaying ? Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.green[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: 
            Column(
              children: [
                Text('Meditation in progress...'),
                Text("Close your eyes and focus on your breath."),
                SizedBox(height: 10),
                
                TextButton(onPressed: (){
                  setState(() {
                    isPlaying = false;
                  });
                }, child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Text('Stop'),
                )),
              ],
            ),
          ) :
    Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(" Before you begin remember to Keep your mind clear and your heart open."),
          SizedBox(height: 10),
          TextButton(onPressed: (){
            setState(() {
              isPlaying = true;
            });
          }, child: Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.red[300],
              borderRadius: BorderRadius.circular(50),
             
            ),
            
            child: Text('Start'),
          )),


       
        ],
        
      ),
    );
  }
}
