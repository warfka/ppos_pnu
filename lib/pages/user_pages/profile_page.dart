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
                //Text('Лучшие users'),
                /*Expanded(
              flex: 3,
              child: FutureBuilder<User?>(
                future: _client.getUser(id: '2'),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    User? userInfo = snapshot.data;

                    if (userInfo != null) {
                      Data userData = userInfo.data;

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(userData.avatar),
                          SizedBox(height: 8.0),
                          Text(
                            '${userInfo.data.firstName} ${userInfo.data.lastName}',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            userData.email,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      );
                    }
                  }
                  return CircularProgressIndicator();
                },
              ),
            ),*/
              ],
            ),
          ),

        )
    );
  }
}
