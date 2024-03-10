import 'package:flutter/material.dart';
import 'package:task/CustomWidgets/custom_inkwell_public_transport.dart';
import 'package:task/CustomWidgets/taxi_service_container.dart';
import 'package:task/CustomWidgets/custom_button.dart';
import 'utilities/custom_colors.dart';
import 'utilities/custom_texts.dart';
import 'package:task/CustomWidgets/custom_icon_container.dart';
import 'CustomWidgets/custom_inkwell.dart';
import 'CustomWidgets/custom_chips.dart';
import 'package:task/CustomWidgets/service_container_layout.dart';
import 'CustomWidgets/self_parking_details.dart';
import 'package:task/CustomWidgets/drop_down_container.dart';
import 'CustomWidgets/contact_container.dart';
import 'utilities/current_date_time.dart';


class AirportScreen extends StatefulWidget {
  const AirportScreen({Key? key}) : super(key: key);

  @override
  _AirportScreenState createState() => _AirportScreenState();
}

class _AirportScreenState extends State<AirportScreen> {
  int _selectedChipIndex = 0;
  int _selectedSelfParkingChipIndex = 0;
  int _selectedTerminalMapChipIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedChipIndex = 0;
    _selectedTerminalMapChipIndex = 0;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 27, 20, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dubai Airport - DXB", style: CustomTextStyles.s20Bold),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text("Dubai .", style: CustomTextStyles.s12w500),
                      const SizedBox(width: 6),
                      Text("🇦🇪 United Arab Emirates",
                          style: CustomTextStyles.s12Regular)
                    ],
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        height: 320,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/uae.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Positioned(
                        top: 145,
                        left: 10,
                        right: 10,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: CustomColors.border),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CustomIconContainer(
                                        svgPath: 'assets/images/weather.svg',
                                        text: '19 C',
                                        subtext: 'Cloudy',
                                      ),
                                      CustomIconContainer(
                                        svgPath: 'assets/images/calander.svg',
                                        text: DateTimeUtils.getCurrentDate(),
                                        subtext: DateTimeUtils.getCurrentDay(),
                                      ),
                                      CustomIconContainer(
                                        svgPath: 'assets/images/clock.svg',
                                        text: DateTimeUtils.getCurrentTime(),
                                        subtext: 'GMT+4',
                                      ),
                                      const CustomIconContainer(
                                        svgPath: 'assets/images/currency.svg',
                                        text: 'AED',
                                        subtext: '1\$ = 3.67AED',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            right: BorderSide(
                                                width: 1,
                                                color: CustomColors.border),
                                          ),
                                        ),
                                        child: CustomInkWell(
                                          onPressed: () {},
                                          text: 'Get direction',
                                          icon: const Icon(Icons.directions,
                                              color: CustomColors.iconColor,
                                              size: 16),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomInkWell(
                                        onPressed: () {},
                                        text: 'Call airport',
                                        icon: const Icon(Icons.phone,
                                            color: CustomColors.iconColor,
                                            size: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomChip(
                        label: 'Transport',
                        isSelected: _selectedChipIndex == 0,
                        onTap: () {
                          setState(() {
                            _selectedChipIndex = 0;
                          });
                        },
                      ),
                      CustomChip(
                        label: 'Terminal',
                        isSelected: _selectedChipIndex == 1,
                        onTap: () {
                          setState(() {
                            _selectedChipIndex = 1;
                          });
                        },
                      ),
                      CustomChip(
                        label: 'Forex',
                        isSelected: _selectedChipIndex == 2,
                        onTap: () {
                          setState(() {
                            _selectedChipIndex = 2;
                          });
                        },
                      ),
                      CustomChip(
                        label: 'Contact info',
                        isSelected: _selectedChipIndex == 3,
                        onTap: () {
                          setState(() {
                            _selectedChipIndex = 3;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const ServiceContainerLayout(
                    text: 'Taxi service',
                    children: [
                      Wrap(
                        spacing: 10,
                        runSpacing: 15,
                        children: [
                          TaxiServiceDetails(
                            imageAssetPath: 'assets/images/uber.png',
                            price: '\$\$\$\$',
                            isLuxury: false,
                          ),
                          TaxiServiceDetails(
                            imageAssetPath: 'assets/images/careem.png',
                            price: '\$\$\$\$',
                            isLuxury: false,
                          ),
                          TaxiServiceDetails(
                            imageAssetPath: 'assets/images/yango.png',
                            price: '\$\$\$\$',
                            isLuxury: false,
                          ),
                          TaxiServiceDetails(
                            imageAssetPath: 'assets/images/blacklane.png',
                            price: '\$\$\$\$',
                            isLuxury: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ServiceContainerLayout(
                    text: "Public transport",
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: CustomColors.border))),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 21),
                              child: CustomInkWellPublicTransport(
                                  onPressed: () {},
                                  text: 'Metro',
                                  icon: const Icon(Icons.train_sharp),
                                  subText: '6am - 10am'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 21),
                            child: CustomInkWellPublicTransport(
                                onPressed: () {},
                                text: 'Bus',
                                icon: const Icon(Icons.directions_bus_sharp),
                                subText: 'available 24hrs'),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  ServiceContainerLayout(
                    text: 'Self Parking',
                    children: [
                      Row(
                        children: [
                          CustomChipLarge(
                            label: 'T1',
                            isSelected: _selectedSelfParkingChipIndex == 0,
                            onTap: () {
                              setState(() {
                                _selectedSelfParkingChipIndex = 0;
                              });
                            },
                          ),
                          const SizedBox(width: 20),
                          CustomChipLarge(
                            label: 'T2',
                            isSelected: _selectedSelfParkingChipIndex == 1,
                            onTap: () {
                              setState(() {
                                _selectedSelfParkingChipIndex = 1;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 23),
                      const SelfParkingDetails(vehicle: 'assets/images/bike.svg', vehType: 'Two Wheeler', rate: '50'),
                      const SelfParkingDetails(vehicle: 'assets/images/car.svg', vehType: 'Car Parking', rate: '50'),
                      const SelfParkingDetails(vehicle: 'assets/images/ev.svg', vehType: 'Electric Car Parking', rate: '100')
                    ],
                  ),
                  const SizedBox(height: 20),
                  ServiceContainerLayout(
                    text: 'Terminal map',
                    children: [
                      Row(
                        children: [
                          CustomChipLarge(
                            label: 'T1',
                            isSelected: _selectedTerminalMapChipIndex == 0,
                            onTap: () {
                              setState(() {
                                _selectedTerminalMapChipIndex = 0;
                              });
                            },
                          ),
                          const SizedBox(width: 20),
                          CustomChipLarge(
                            label: 'T2',
                            isSelected: _selectedTerminalMapChipIndex == 1,
                            onTap: () {
                              setState(() {
                                _selectedTerminalMapChipIndex = 1;
                              });
                            },
                          ),
                          const SizedBox(width: 20),
                          CustomChipLarge(
                            label: 'T3',
                            isSelected: _selectedTerminalMapChipIndex == 2,
                            onTap: () {
                              setState(() {
                                _selectedTerminalMapChipIndex = 2;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 105,
                            width: double.infinity,
                            child: Image.asset(
                              'assets/images/terminal.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColors.color1
                              ),
                              child: Text('View', style: CustomTextStyles.s12w500.copyWith(color: Colors.white)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  ServiceContainerLayout(
                      text: 'Foreign exchange',
                      children: [
                        Column(
                          children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1,
                                  color: CustomColors.border
                                )
                              )
                            ),
                            child: const CollapsibleContainer(
                                title: 'Travelex',
                                description: 'Terminal 3-\nAirside Dept Downtown, Concourse B,\nTerminal 3, beside Winston Smoking room'
                            ),
                          ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1,
                                          color: CustomColors.border
                                      )
                                  )
                              ),
                              child: const CollapsibleContainer(
                                  title: 'Al Ansari Exchange',
                                  description: 'Terminal 2-\nAirside Dept Downtown, Concourse A,\nTerminal 2, beside Winston Smoking room'
                              ),
                            ),
                            const CollapsibleContainer(
                                title: 'Emirates NBD',
                                description: 'Terminal 1-\nAirside Dept Downtown, Concourse C,\nTerminal 1, beside Winston Smoking room'
                            )
                        ],
                        )
                      ]),
                  const SizedBox(height: 20),
                  ServiceContainerLayout(
                      text: 'Contact airport',
                      children: [
                        Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1,
                                  color: CustomColors.border
                                )
                              )
                            ),
                            child: const ContactWidget(text: 'Police'),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: CustomColors.border
                                    )
                                )
                            ),
                            child: const ContactWidget(text: 'Lost and found'),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: CustomColors.border
                                    )
                                )
                            ),
                            child: const ContactWidget(text: 'Transport'),
                          ),
                          const ContactWidget(text: 'Head Office')
                        ],
                        )
                      ]
                  ),
                  const SizedBox(height: 40),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        onPressed: () {},
                        text: 'Get direction',
                        icon: const Icon(Icons.directions,
                            color: Colors.white,
                            size: 18),
                      ),
                      CustomButton(
                        onPressed: () {},
                        text: 'Call airport',
                        icon: const Icon(Icons.phone,
                            color: Colors.white,
                            size: 18),
                      ),
                    ],
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