import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,left: 25,right:15 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('howdy,what are you\n looking for 👀',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Container(
            child: const Icon(CupertinoIcons.cart),
          )
        ],
      ),
    );
  }
}