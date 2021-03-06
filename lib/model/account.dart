import 'package:cloud_firestore/cloud_firestore.dart';

enum RolePlay {
  owner,
  editor, //can modify PGC + author
  author, //can add, modify and delete records
  colaborator, // can add records
  reader //Can only watch records
}

class Account {
  String id;
  String name;
  String image;
  String owner;
  RolePlay role;
  List<String> authorList, collaboratorList, editorList, readerList;

  //List<String> read_permission, write_permission;

  Account.fromFirestore(DocumentSnapshot doc)
      : id = doc.documentID,
        name = doc.data['name'],
        image = doc.data['name'],
        owner = doc.data['name']; //TODO Roleplay y listas

//Para poder guardarlo directamente
  Map<String, dynamic> toFirestore() => {
        'name': this.name,
        'image': this.image,
        'owner': this.owner,
        'role': this.role,
        'authorList': this.authorList,
      };

  Account(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return this.name;
  }
}

List<Account> toAccountList(QuerySnapshot query) {
  //Paso la lista de QuerySnapshot a Account
  return query.documents.map((doc) => Account.fromFirestore(doc)).toList();
}
