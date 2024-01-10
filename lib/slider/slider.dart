import 'package:flutter/material.dart';

class sliderForDad extends StatelessWidget {
  sliderForDad(this.time, this.childrenList, this.height);

  var childrenList = <Widget>[];
  final Duration time;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      child: Row(
        children: childrenList,
      ),
    );
  }
}

class SliderItem extends StatelessWidget {
  const SliderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
