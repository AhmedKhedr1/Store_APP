import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/categoryListView.dart';
import 'package:store_app/core/Widgets/CustomBackIcon.dart';
import 'package:store_app/core/utils/Assets.dart';

class Categoriesviewbody extends StatelessWidget {
  const Categoriesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 24, left: 24, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackIcon(),
            SizedBox(
              height: 15,
            ),
            Text(
              'Shop by Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Container(
                      height: 64,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF3F3F3)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16, left: 8),
                            child: Image.asset(Assets.KNoprofileImage),
                          ),
                          Text('Hoodies')
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
