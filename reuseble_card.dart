import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {
  ReusebleCard(@required this.color, this.cardChild);

  final Color color;
  final cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: 195,width: 150,
      margin: EdgeInsetsDirectional.all(15),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}



class reuseblecard extends StatelessWidget {
  reuseblecard(this.color , this.cardchild);

  final Color color;
  final cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      height: 130,width: 350,
      margin: EdgeInsetsDirectional.all(15),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}




class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,@required this.onPressed});

  final icon;
  final  onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        elevation: 5,
        constraints: BoxConstraints.tightFor(width: 50,height: 50),
        shape: CircleBorder(),
        fillColor: Color(0xFF1D1E50),
        child: Icon(icon)
    );
  }
}

