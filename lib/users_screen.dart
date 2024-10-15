import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String phoneNumber;

  UserModel({
    required this.id,
    required this.name,
    required this.phoneNumber,
});
}

class UsersScreen extends StatelessWidget {

  List<UserModel> users =[
    UserModel(
      id: 1,
      name: 'bavley adel',
      phoneNumber: '0100990990'
    ),
    UserModel(
        id: 2,
        name: 'ahmed hossam',
        phoneNumber: '010234242'
    ),
    UserModel(
        id: 3,
        name: 'Mark adel',
        phoneNumber: '0100990990'
    ),
    UserModel(
        id: 4,
        name: 'Mina adel',
        phoneNumber: '01036790990'
    ),
    UserModel(
        id: 1,
        name: 'bavley adel',
        phoneNumber: '0100990990'
    ),
    UserModel(
        id: 2,
        name: 'ahmed hossam',
        phoneNumber: '010234242'
    ),
    UserModel(
        id: 3,
        name: 'Mark adel',
        phoneNumber: '0100990990'
    ),
    UserModel(
        id: 4,
        name: 'Mina adel',
        phoneNumber: '01036790990'
    ),
    UserModel(
        id: 5,
        name: 'Mario adel',
        phoneNumber: '01036790990'
    ),
    UserModel(
        id: 6,
        name: 'andrew adel',
        phoneNumber: '01036790990'
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Users'
        ),
      ),
      body: ListView.separated(
         itemBuilder: (context,index) => buildUserItem(users[index]),
          separatorBuilder:(context,index)=>Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ) ,
          itemCount: users.length,
      ),
    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phoneNumber}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
