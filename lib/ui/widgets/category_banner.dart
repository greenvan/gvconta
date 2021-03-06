import 'package:flutter/material.dart';
import 'package:gvconta/model/category.dart';
import 'package:gvconta/model/user.dart';
import 'package:gvconta/system/db.dart' as db;
import 'package:gvconta/system/i18n.dart';
import 'package:gvconta/system/user_provider.dart';

class CategoryBanner extends StatelessWidget {
  final String title, type;
  final User user;

  TextEditingController _textFieldController = TextEditingController();

  //Hay que añadir una función como método.

  CategoryBanner({Key key, this.title, this.type, this.user}) : super(key: key);

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(I18n.of(context).addElementTo(this.title)),
            content: TextField(
              controller: _textFieldController,
              decoration:
                  InputDecoration(hintText: I18n.of(context).enterName + ": "),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text(I18n.of(context).ADD),
                onPressed: () {
                  Category newCategory = Category(
                      name: _textFieldController.text,
                      parentId: '1',
                      extras: {'type': type});
                  if (type == 'expenses') {
                    db.addExpense(user, newCategory);
                  } else {
                    db.addIncome(user, newCategory);
                  }
                  Navigator.of(context).pop();
                },
              ),
              new FlatButton(
                child: new Text(I18n.of(context).CANCEL),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                width: 2.0, color: Theme.of(context).primaryColorDark),
            bottom:
                BorderSide(width: 4.0, color: Theme.of(context).primaryColor),
          ),
          color: Theme.of(context).primaryColorLight,
        ),
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).primaryColorDark),
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Theme.of(context).primaryColorDark,
              onPressed: () => _displayDialog(context),
            ),
          ],
        ));
  }
}
