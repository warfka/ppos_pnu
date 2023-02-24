import 'package:flutter/material.dart';

import '../../ui/profile/user_image_widget.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(

          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.white,
                  child: Center(
                    child: ProfileWidget(
                      //imagePath: imagePath,
                      onClicked: () async {}, imagePath: '',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Егор Сироткин',
                      style: TextStyle(
                        fontSize: 25,

                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Баллы: 3',
                      style: TextStyle(
                        fontSize: 25,

                      ),
                    ),
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
                )
              ],
            ),
          ),
        )
    );
  }
}
