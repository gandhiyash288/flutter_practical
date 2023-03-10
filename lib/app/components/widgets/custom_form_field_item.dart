import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormFieldItem extends StatelessWidget {
  CustomFormFieldItem({
    Key? key,
    required this.title,
    this.subTittle,
    this.onTap,
    required this.selectedValues,
  }) : super(key: key);
  final String? title;
  final String? subTittle;
  final GestureTapCallback? onTap;
  final List? selectedValues;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(
            height: 20,
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title.toString(),
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w700)),
            GestureDetector(
                onTap: onTap,
                child: Text("Change",
                    style: TextStyle(fontSize: 18, color: Colors.blueAccent,fontWeight: FontWeight.w600))),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        subTittle!=null?
        Text(
          subTittle.toString(),
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
        ):SizedBox(),
        SizedBox(height: 8),
        Container(
          height: 50,
          padding: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8.0)
          ),
          child: Text(
            selectedValues![0].toString(),
            style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
