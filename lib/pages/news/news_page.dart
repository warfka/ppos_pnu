import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  final List<String> entriesMain = <String>['Опрос Дейли',
                                            'Повышенная стипендия. 15.02 - последний день',
                                            'СКС Дисконт',
                                                'Санаторий-профилакторий «Берёзка»',
                                                'Настолки на весь ТОГУ!',
                                                'НДФЛ на материальную поддержку студентов отменён'];
  final List<String> entriesSub = <String>['Пройди опрос и помоги ректорату ТОГУ, в награду получишь один балл ППОСника.',
                                            'Объявляется конкурс на соискание повышенной государственной академической стипендии за особые достижения в следующих видах деятельности.',
                                            'Все скидки от профсоюза в твоём телефоне.',
                                                'Успей оздоровиться без отрыва от учебного процесса.',
                                                'Профбюро ФКФН, ФАИТ и ФПЭ организуют для нас день настольных игр 25.02.',
                                                '18 января Госдума в I чтении приняла этот законопроект.'];
  final List<String> entriesUrl = <String>['https://forms.yandex.ru/u/63d1e65543f74f89eb66fd40/',
                                           'https://vk.com/wall-1475296_17608',
                                           'https://play.google.com/store/apps/details?id=com.gorbin.sks&hl=ru&gl=US&pli=1'
  'https://vk.com/wall-1475296_17663',
  'https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley',
  'https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley'];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: entriesMain.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.hot_tub),
                title: Text(entriesMain[index]),
                subtitle: Text(entriesSub[index]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[

                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('Перейти'),
                    onPressed: () async {
                      final Uri url = Uri.parse(entriesUrl[index]);
                      if (!await launchUrl(url)) throw 'Could not launch $url';
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget CardNews(){
    return Card(
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
    );
  }
}