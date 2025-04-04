import 'package:flutter/material.dart';

class DIUPage extends StatefulWidget {
  const DIUPage({super.key});

  @override
  State<DIUPage> createState() => _DIUPageState();
}

class _DIUPageState extends State<DIUPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DIU Page')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Daffodil International University',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Smart City, Ashulia, Dhaka'),
              SizedBox(height: 30),
              Text(
                '''The university has been founded by Daffodil Group with the approval of the Ministry of Education under the Private University Act of 1992 and its amendment in 1998. Daffodil International University came into being on 24th January 2002. The university today combines impressive modern facilities and a dynamic study environment.''',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
