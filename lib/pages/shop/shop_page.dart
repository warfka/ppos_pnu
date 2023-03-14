import 'package:flutter/material.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {



  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: [
        Container(
          child: Row(
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
                          image: const AssetImage('assets/pitogu.png'),//image,
                          fit: BoxFit.cover,
                          width: 128,
                          height: 128,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Мерч ПИТОГУ',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
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
                        const Text(
                          'Мерч ПИТОГУ',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
