import 'package:flutter/material.dart';
import 'package:my_app/core/constants/styles.dart';
import '../../../core/constants/colors.dart';
import '../../../data/data_source/static/on_boarding_data.dart';
class CustomPageViewItem extends StatelessWidget {
  const CustomPageViewItem({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Image.asset(onBoardingList[index].imageUrl!,fit: BoxFit.fill, height: MediaQuery.of(context).size.height * 0.45,width: MediaQuery.of(context).size.width,),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 34.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
            Text(onBoardingList[index].title!,
                style: Styles.textStyle36.copyWith(fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width ,
                child: Text(
                  onBoardingList[index].description!,
                  style: Styles.textStyle15.copyWith(
                  ),
                )),
          ],),
        )

      ],
    );
  }
}
