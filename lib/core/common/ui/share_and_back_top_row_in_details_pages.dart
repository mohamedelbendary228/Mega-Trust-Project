import 'package:flutter/material.dart';

class ShareAndBackTopRow extends StatelessWidget {
  final VoidCallback onPressedArrow;
  final VoidCallback onPressedShare;

  const ShareAndBackTopRow({
    Key key,
    @required this.onPressedArrow,
    @required this.onPressedShare,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: 30,
          height: 30,
          //alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).primaryColor.withOpacity(0.3),
          ),
          child: IconButton(
            alignment: Alignment.center,
            iconSize: 16,
            splashColor: Theme.of(context).primaryColor.withOpacity(0.5),
            color: Theme.of(context).primaryColor,
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: onPressedArrow,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.share,
            color: Theme.of(context).primaryColor,
            size: 35,
          ),
          onPressed: onPressedShare,
        ),
      ],
    );
  }
}
