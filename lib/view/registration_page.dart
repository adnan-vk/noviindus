import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.arrow_back),
                  ),
                  const Icon(Icons.notifications_none),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter your full name",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 154, 153, 153),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(199, 215, 215, 215),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(139, 185, 185, 185),
                          ),
                        ),
                        filled: true,
                        fillColor: Color.fromARGB(207, 240, 236, 236),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Whatsapp Number",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter your whatsapp number",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 154, 153, 153),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(199, 215, 215, 215),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(139, 185, 185, 185),
                          ),
                        ),
                        filled: true,
                        fillColor: Color.fromARGB(207, 240, 236, 236),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter your full Address",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 154, 153, 153),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(199, 215, 215, 215),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(139, 185, 185, 185),
                          ),
                        ),
                        filled: true,
                        fillColor: Color.fromARGB(207, 240, 236, 236),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "choose your location",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 154, 153, 153),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(199, 215, 215, 215),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(139, 185, 185, 185),
                          ),
                        ),
                        filled: true,
                        fillColor: Color.fromARGB(207, 240, 236, 236),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Treatments"),
                  Container(
                    height: 100,
                    width: 335,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 222, 222, 222),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1.",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Couple Combo Package i..",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Male",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 39, 126, 42),
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 44, 109, 47),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    const Text(
                                      "Female",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 128, 39),
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 44, 109, 47),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Icon(
                                Icons.edit,
                                color: Color.fromARGB(255, 39, 110, 41),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: 335,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(85, 33, 149, 243),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            size: 20,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Add Treatments",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total Amount",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(199, 215, 215, 215),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(139, 185, 185, 185),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(207, 240, 236, 236),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Discount Amount",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(199, 215, 215, 215),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(139, 185, 185, 185),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(207, 240, 236, 236),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Payment Option"),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: 'card',
                            groupValue: null,
                            onChanged: (value) {},
                          ),
                          const Text('Card'),
                          Radio<String>(
                            value: 'upi',
                            groupValue: null,
                            onChanged: (value) {},
                          ),
                          const Text('UPI'),
                          Radio<String>(
                            value: 'cash',
                            groupValue: null,
                            onChanged: (value) {},
                          ),
                          const Text('Cash'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Advance Amount",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(199, 215, 215, 215),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(139, 185, 185, 185),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(207, 240, 236, 236),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Balance Amount",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(199, 215, 215, 215),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(139, 185, 185, 185),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(207, 240, 236, 236),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Treatment date",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_month,
                              color: Color.fromARGB(255, 42, 104, 44),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(199, 215, 215, 215),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(139, 185, 185, 185),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(207, 240, 236, 236),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Treatment Time",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color.fromARGB(255, 40, 111, 42),
                              ),
                              hintText: "Hour",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 15),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color.fromARGB(255, 40, 111, 42),
                              ),
                              hintText: "Minutes",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 15),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 335,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        20,
                        86,
                        48,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
