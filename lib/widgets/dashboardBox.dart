import 'package:flutter/material.dart';

class DashboardBox extends StatelessWidget {
  final String name;
  final String count;
  final Color color;
   const DashboardBox({Key? key, required this.name, required this.count,required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width/2.25,
      width: MediaQuery.of(context).size.width/2.25,
      decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 13),
            child:  Text(name,style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
          ),
          SizedBox(height: 20,),
          Text(count,
            style:const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),

        ],
      ),
    );
  }
}
