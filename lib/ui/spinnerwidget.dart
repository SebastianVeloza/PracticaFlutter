import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SpinnerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return Center(
      child: Container(
        alignment: AlignmentDirectional.bottomCenter,
        child: Column(
          children: <Widget>[
            CircularProgressIndicator()
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
        )
      ),
    );*/
    return Shimmer.fromColors(
      baseColor: Colors.blue,
      highlightColor: Colors.grey[300]!,
      child: Center(
        child: Text(
          'Sebastian Veloza',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
