import 'package:flutter/material.dart';
import 'package:store_app/Features/Orders/Presentation/Views/Widgets/OrderStatusTabs.dart';
import 'package:store_app/Features/Orders/data/OrdersModel.dart';
import 'package:store_app/core/utils/Assets.dart';

class OrdersViewbody extends StatelessWidget {
  OrdersViewbody({super.key});
  List<Ordersmodel> OrderTitle = [
    Ordersmodel(OrderTitle: 'Order  #456765', numOfitems: '4 items'),
    Ordersmodel(OrderTitle: 'Order  #454569', numOfitems: '5 items'),
    Ordersmodel(OrderTitle: 'Order  #454809', numOfitems: '3 items')
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
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.receipt,
                      color: Colors.black,
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          OrderTitle[index].OrderTitle,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          OrderTitle[index].numOfitems,
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
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
          ))
        ],
      ),
    );
  }
}
