import 'package:dio_initial/user.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final UserCreate usrCreate;

  const UserCard({super.key, required this.usrCreate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 400,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: [
          Visibility(
            visible: usrCreate.id != null,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 80,
                  child: Text(
                    'ID',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 220,
                  child: Text(
                    ': ${usrCreate.id}',
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 80,
                child: Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 220,
                child: Text(
                  ': ${usrCreate.name}',
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 80,
                child: Text(
                  'Job',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 220,
                child: Text(
                  ': ${usrCreate.job}',
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  usrCreate.id != null ? 'Created At' : 'Updated At',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 220,
                child: Text(
                  ': ${usrCreate.createdAt}',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
