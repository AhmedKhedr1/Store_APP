import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';

class OrderStatusTabs extends StatefulWidget {
  OrderStatusTabs({
    super.key,
  });

  @override
  State<OrderStatusTabs> createState() => _OrderStatusTabsState();
}

class _OrderStatusTabsState extends State<OrderStatusTabs> {
  List<String> ordersStatus = [
    'Processing',
    'Shipped',
    'Delivered',
    'Returned',
    'Canceled'
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        ordersStatus.length,
        (index) {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  color: isSelected ? KPrimaryColor : Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(100)),
              child: Text(
                ordersStatus[index],
                style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 15),
              ),
            ),
          );
        },
      ),
    );
  }
}
