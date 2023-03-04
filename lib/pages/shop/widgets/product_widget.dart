import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  //final String imagePath;
  final VoidCallback onClicked;

  const ProductItemWidget({
    Key? key,
    //required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Material(
          color: Colors.lightBlue,
          elevation: 8,
          borderRadius: BorderRadius.circular(25),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
              onTap: (){},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/pitogubag.png'),//image,
                    fit: BoxFit.cover,
                    width: 128,
                    height: 128,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Мерч ПИТОГУ',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )
                ],
              )
          ),
        )
      ],
    );
  }

}