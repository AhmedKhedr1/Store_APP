
import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';

class UserinfoBox extends StatelessWidget {
  const UserinfoBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 13, 20, 8),
      height: 96,
      width: double.infinity,
      decoration: BoxDecoration(
          color: KLightColor, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Glibert Jones',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'Glibert Jones001@gmail.com',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8D8D8D)),
              ),
              Text(
                '121-224-7890',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8D8D8D)),
              )
            ],
          ),
          SizedBox(
            width: 60,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Edit',
                style: TextStyle(
                    fontSize: 13,
                    color: KPrimaryColor,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
