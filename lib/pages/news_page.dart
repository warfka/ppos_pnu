import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

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
              title: Text('Опрос Дейли'),
              subtitle: Text('Пройди опрос и помоги ректорату ТОГУ, в награду получишь один балл ППОСника.'),
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
                  child: const Text('Пройти'),
                  onPressed: () async {
                    final Uri url = Uri.parse('https://forms.yandex.ru/u/63d1e65543f74f89eb66fd40/');
                    if (!await launchUrl(url)) throw 'Could not launch $url';
                  },
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
