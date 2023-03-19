import 'package:flutter/material.dart';

class DashboardBox extends StatelessWidget {
  final String name;
  final String count;
  final Color color;
   const DashboardBox({Key? key, required this.name, required this.count,required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width/3,
      width: MediaQuery.of(context).size.width/2.25,
      decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 13),
            child:  Text(name,style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white
            ),),
          ),
          // SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(count,
                style:const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              SizedBox(width: 30,),
            ],
          ),

        ],
      ),
    );
  }
}
