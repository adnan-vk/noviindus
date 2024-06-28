// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:noviindus_task/service/api_service.dart';
import 'package:noviindus_task/view/registration_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key, required this.token});

  final String token;

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  void initState() {
    super.initState();
    ApiService().fetchData(widget.token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ApiService().patients.length,
              itemBuilder: (context, index) {
                final patient = ApiService().patients[index];
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(111, 218, 218, 218),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${index + 1}.',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            patient['name'],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        patient['package'],
                        style: const TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 38, 126, 42),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.red,
                            size: 15,
                          ),
                          const SizedBox(width: 5),
                          Text(patient['date']),
                          const SizedBox(width: 20),
                          const Icon(
                            Icons.people_outline_sharp,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(
                            ' ${patient['doctor']}',
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Divider(),
                      const Row(
                        children: [
                          Text(
                            'View Booking details',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: 90),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const RegistrationPage()),
                ));
              },
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 20, 86, 48),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
