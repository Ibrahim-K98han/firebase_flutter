import 'package:flutter/material.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Collection'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('Title'),
            subtitle: Text('Writter'),
            trailing: Text('1990'),
          );
        },
      ),
    );
  }
}
