import 'package:flutter/cupertino.dart';
import 'package:hottakes1/dashboard.dart';
import 'package:hottakes1/services/database.dart';
import 'package:provider/provider.dart';
import 'package:hottakes1/models/user.dart';
import 'package:hottakes1/login.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);
    print(user);
    // return home or login
    if (user == null) {
      return Login();
    } else {
      DatabaseService()
          .setGameToday(1, 'rap', 'hea', 'T:224.5', '-4.5', '1-0', '0-1');
      DatabaseService()
          .setGameToday(2, 'war', 'buck', 'T:233.0', '-10.0', '0-1', '0-1');
      DatabaseService().givePick(user.uid);
      return Dashboard();
    }
  }
}
