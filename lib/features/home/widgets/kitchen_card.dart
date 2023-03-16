import 'package:flutter/material.dart';

class KitchenCard extends StatelessWidget {
  const KitchenCard({
    super.key,
    required this.fontSize,
  });

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text('Well Plated By Anamika', style: TextStyle(fontWeight: FontWeight.w500, fontSize: fontSize),),
                  SizedBox(height:6),
                  Text('Chef - Anamika Verma', style: TextStyle(color: Colors.grey, fontSize:14),),
                  SizedBox(height:6),
                  Text('Anamika is a chef from Bihar. She is very good.',style:TextStyle(color: Colors.grey, fontSize:14),),
                  SizedBox(height:6),
                  Text('Cost for one: 120',),
                  SizedBox(height:6),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                            color: Color(0xFF24963f),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: [
                            Text('4.3', style: TextStyle(color: Colors.white),),
                            Icon(Icons.star, color: Colors.white, size: 15,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Delivery in 38 mins', style: TextStyle(color: Color(0xFFc23539),),),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(image: AssetImage('assets/images/southindian.jpeg'), fit: BoxFit.cover,
                    ),),
                ),
                SizedBox(height: 6),
                ElevatedButton(onPressed: (){}, child: Text('Order Now', style: TextStyle(fontWeight: FontWeight.w500),),style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, foregroundColor: Color(0xFFc23539),shadowColor: Colors.transparent, shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: Color(0xFFc23539),
                    width: 1,
                  ),
                ),

                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
