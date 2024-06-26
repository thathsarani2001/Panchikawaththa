// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter/cupertino.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({super.key});

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            size: 30,
          ),
        ),
        title: const Text(
          'Details',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Color(0xffFF5C01),
          ),
        ),
        actions: [
          const Icon(
            Icons.favorite_border_sharp,
            size: 35,
            color: Color(0xffFF5C01),
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 290,
                width: double.infinity,
                child: Swiper(
                  itemWidth: 300.0,
                  itemHeight: 200.0,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      height: 250,
                      width: 200,
                      'assets/engine_image.jpg',
                    );
                  },
                  itemCount: 10,
                  control: const SwiperControl(color: Colors.black),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              SizedBox(
                height: 50,
                child: OtpTextField(
                  filled: true,
                  fillColor: const Color(0xffD9D9D9),
                  numberOfFields: 4,
                  showFieldAsBox: true,
                  focusedBorderColor: const Color(0xffD9D9D9),
                  cursorColor: Colors.transparent,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  color: Colors.black,
                  thickness: 1.6,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xffFF5C01),
                      ),
                      child: const Center(
                        child: Text(
                          'Buy it now',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Toyota CHR',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          height: 28,
                          width: 1,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        const Text(
                          '2017',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Rs850,000.00',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.phone_rounded,
                                size: 36,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                // Call action
                              },
                            ),
                            const SizedBox(width: 3),
                            IconButton(
                              icon: const Icon(
                                Icons.message_rounded,
                                size: 36,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                // Message action
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              const Row(
                children: [
                  Text(
                    'Part or Accessory Type: ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Engine',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Row(
                children: [
                  Image.asset(
                    height: 20,
                    width: 15,
                    'assets/Location_icon.png',
                  ),
                  const Text(
                    'Location:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    ' Moratuwa,Colombo',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.018),
              Row(
                children: [
                  buildTag('New'),
                  const SizedBox(width: 5),
                  buildTag('Auto'),
                  const SizedBox(width: 5),
                  buildTag('Hybrid'),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFF5C01),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.012),
              const Text(
                'AQUA / PRIUS 20 / PRIUS 30 / INSITE ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.035),
              const Row(
                children: [
                  Expanded(child: Divider(thickness: 1.5)),
                  SizedBox(width: 15),
                  Text(
                    'See more',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xffFF5C01),
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    CupertinoIcons.chevron_down,
                    color: Color(0xffFF5C01),
                    size: 20,
                  ),
                  SizedBox(width: 15),
                  Expanded(child: Divider(thickness: 1.5)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTag(String text) {
    return Container(
      height: 34,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.grey.shade200,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
