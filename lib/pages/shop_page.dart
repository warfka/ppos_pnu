import 'package:flutter/material.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.hot_tub),
              title: Text('Кружка ППОСника'),
              subtitle: Text('Для получения самого тёплого результата твоих начинаний и продолжений.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                /*TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),*/
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Приобрести'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
