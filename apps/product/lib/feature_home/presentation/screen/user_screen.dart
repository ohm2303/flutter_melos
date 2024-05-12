import 'package:core_ui/widgets/elements/texts/big_text.dart';
import 'package:core_ui/widgets/elements/texts/small_text.dart';
import 'package:core_ui/widgets/elements/texts/text_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Screen'),
      ),
      body: const Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://variety.com/wp-content/uploads/2014/05/doraemon2.jpg?crop=0px%2C193px%2C1593px%2C887px&resize=1000%2C563')
            ),
            SizedBox(height: 20),
            TextTitle(
              title: 'Memo',
              color: Colors.blue,
            ),
            SizedBox(height: 30),
            SmallText(
              title: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                  'Lorem Ipsum has been the industry is standard dummy text ever since the 1500s, '
                  'when an unknown printer took a galley of type and scrambled it to make a type specimen book. '
                  'It has survived not only five centuries, but also the leap into electronic typesetting, '
                  'remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, '
                  'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
