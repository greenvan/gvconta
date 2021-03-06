import 'package:flutter/material.dart';
import 'package:gvconta/model/account.dart';
import 'package:gvconta/model/user.dart';
import 'package:gvconta/model/navigation_arguments.dart';

class DiaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavigationArguments args = ModalRoute.of(context).settings.arguments;
    final Account account = args.account;
    final User user = args.user;

    //TODO ver si necesitamos un evento o no

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Diario:' + account.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Esta es la página en la que se podrá ver la lista de gastos e ingresos asociados a la cuenta ' +
                account.toString() +
                ' del usuario: ' +
                user.name,
          ),
        ),
      ),
    );
  }
}
