import 'package:flutter/material.dart';
import 'package:project_app/models/all_expenses_item_model.dart';
import 'package:project_app/utilies/app_image.dart';
import 'package:project_app/view/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
   final items =const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectenIndex=0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectenIndex=0;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[0],
              isActive: selectenIndex==0,
            ),
          ),
        ),
         SizedBox(width: 8,),
         Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectenIndex=1;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[1],
              isActive: selectenIndex==1,
            ),
          ),
        ),
        SizedBox(width: 8,),
         Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectenIndex=2;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[2],
              isActive: selectenIndex==2,
            ),
          ),
        )
        
      ],
    );
    return Row(
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      return Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectenIndex=index;
              });
            },
            child: Padding(
              padding:  EdgeInsets.symmetric( horizontal:index==1? 12:0),
              child: AllExpensesItem(
                allExpensesItemModel: item,
                isActive: selectenIndex==index,
              ),
            ),
          ),
        );
    }).toList());
  }
}
