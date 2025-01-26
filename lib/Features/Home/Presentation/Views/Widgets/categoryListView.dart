
import 'package:flutter/material.dart';
import 'package:store_app/core/utils/Assets.dart';

class categoryListView extends StatelessWidget {
 categoryListView({super.key, required this.scrollDirection});
final Axis scrollDirection ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: scrollDirection,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(
                    Assets.KNoprofileImage,
                  ), // Replace with your image path
                ),
                SizedBox(
                  height: 8,
                ),
                Text('Hoodies')
              ],
            ),
          );
        },
      ),
    );
  }
}
