import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:real_estate_app/model/real_estate_item.dart';
import 'package:real_estate_app/model/user.dart';
import 'package:real_estate_app/pages/add_real_estate_page.dart';
import 'package:real_estate_app/pages/description_real_estate_page.dart';
import 'package:real_estate_app/pages/greeting_page.dart';
import 'package:real_estate_app/pages/news_page.dart';
import 'package:real_estate_app/pages/settings_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

RealEstateItem realEstate = RealEstateItem();
RealEstateItem editRealEstate = RealEstateItem();
List<RealEstateItem> realEstateList = [];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getData(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2321),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 65, 16, 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const NewsPage()),
                  );
                },
                child: const Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF5EC286),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const SettingsPage()),
                  );
                },
                child: const Text(
                  'Settings',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF5EC286),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Row(
            children: [
              Text(
                'Main',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Expanded(
            child: realEstateList.isNotEmpty
                ? SingleChildScrollView(
                    child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: getRealEstate(),
                  ))
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            'There\'s no real estate',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Color(0xFF5EC286),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          'Click the button below to add the new real estate',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  )),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
          child: InkWell(
            onTap: () {
              realEstate = RealEstateItem();
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => AddRealEstatePage(
                          isEdit: false,
                          editEstate: RealEstateItem(),
                        )),
              );
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color(0xFF5EC286),
                  borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'Add new estate',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget getRealEstate() {
    List<Widget> list = [];
    for (var realEstate in realEstateList) {
      list.add(InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => DescriptionRealEstatePage(
                      realEstate: realEstate,
                      delete: () {
                        realEstateList.removeWhere(
                            (element) => element.id == realEstate.id);
                        addData();
                        setState(() {});
                      },
                    )),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: const Color(0xFF2E3C37),
              borderRadius: BorderRadius.circular(8)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    realEstate.type!,
                    style: const TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Text(
                  '${realEstate.rentalCost!.toStringAsFixed(0)}\$ ${(realEstate.payments!.text).toLowerCase()}',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Icon(
                    Icons.chevron_right,
                    color: Color(0xFF5EC286),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  decoration: BoxDecoration(
                      color: const Color(0xFF1E2321),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    realEstate.state!.text,
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: realEstate.state == EState.perfect
                            ? const Color(0xFF328352)
                            : realEstate.state == EState.average
                                ? const Color(0xFFD27D3F)
                                : const Color(0xFFB53938),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )
          ]),
        ),
      ));
      list.add(const SizedBox(
        height: 16,
      ));
    }
    return Column(
      children: list,
    );
  }
}

void getData(Function() callBack) async {
  final prefs = await SharedPreferences.getInstance();
  if (prefs.getString('user') != null) {
    Map<String, dynamic> userMap = jsonDecode(prefs.getString('user')!);
    user = UserItem.fromJson(userMap);
  }
  final List<dynamic> jsonData1 =
      jsonDecode(prefs.getString('realEstateList') ?? '[]');

  realEstateList = jsonData1.map<RealEstateItem>((jsonList) {
    {
      return RealEstateItem.fromJson(jsonList);
    }
  }).toList();

  callBack();
}

Future<void> addData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('realEstateList', jsonEncode(realEstateList));
  prefs.setString('user', jsonEncode(user));
}
