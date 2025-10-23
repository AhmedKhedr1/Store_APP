import 'package:flutter/material.dart';
import 'package:store_app/Features/Orders/Presentation/Views/Widgets/OrderStatusTabs.dart';
import 'package:store_app/core/utils/Assets.dart';

class OrdersViewbody extends StatelessWidget {
  OrdersViewbody({super.key});
  List<String> OrderTitle = [
    'Order  #456765',
    'Order  #454569',
    'Order  #454809'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 28,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: OrderStatusTabs(),
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            children: List.generate(
              OrderTitle.length,
              (index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                      color: Color(
                        0xffF4F4F4,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.receipt,
                        color: Colors.black,
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            OrderTitle[index],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '4 items',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        Assets.arrow_right,
                        color: Colors.black,
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

/*Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.orders),
            SizedBox(
              height: 24,
            ),
            Text(
              'No Orders yet',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: KPrimaryColor,
                  foregroundColor: Colors.white,
                  minimumSize: Size(200, 54),
                ),
                onPressed: () {},
                child:
                    Text('Explore Categories', style: TextStyle(fontSize: 16)))
          ],
        ),
      ],
    ); */
