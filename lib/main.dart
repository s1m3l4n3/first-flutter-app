import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(
          Icons.add
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            avatar(),
            labelText('NAME'),
            columnSpaceSmall(),
            contentText('Chun-li'),
            columnSpaceBig(),
            labelText('CURRENT NINJA LEVEL'),
            columnSpaceSmall(),
            contentText('$ninjaLevel'),
            columnSpaceBig(),
            emailText('chun.li@thenetninja.co.uk')
          ],
        ),
      ),
    );
  }

  Text labelText(String label) {
    return Text(
      label,
      style: const TextStyle(
          color: Colors.grey,
          letterSpacing: 2.0
      ),
    );
  }

  Text contentText(String content) {
    return Text(
      content,
      style: TextStyle(
          color: Colors.amberAccent[200],
          letterSpacing: 2.0,
          fontSize: 28.0,
          fontWeight: FontWeight.bold
      ),
    );
  }

  Row emailText(String email) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.mail,
          color: Colors.grey[400],
        ),
        rowSpace(),
        Text(
          email,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 18.0,
            letterSpacing: 1.0,
          ),
        )
      ],
    );
  }

  Column avatar() {
    return Column(
      children: [
        const Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('images/simple.jpg'),
            radius: 40.0,
          ),
        ),
        Divider(
          height: 90.0,
          color: Colors.grey[700],
          thickness: 1,
        )
      ],
    );
  }

  SizedBox columnSpaceSmall() {
    return const SizedBox(height: 10.0);
  }

  SizedBox columnSpaceBig() {
    return const SizedBox(height: 30.0);
  }

  SizedBox rowSpace() {
    return const SizedBox(width: 10.0);
  }
}

