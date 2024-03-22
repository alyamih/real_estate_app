import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_estate_app/model/real_estate_item.dart';
import 'package:real_estate_app/pages/add_comment_page.dart';
import 'package:real_estate_app/pages/home_page.dart';
import 'package:uuid/uuid.dart';

class AddRealEstatePage extends StatefulWidget {
  const AddRealEstatePage(
      {super.key, required this.isEdit, required this.editEstate});
  final bool isEdit;
  final RealEstateItem editEstate;

  @override
  State<AddRealEstatePage> createState() => _AddRealEstatePageState();
}

class _AddRealEstatePageState extends State<AddRealEstatePage> {
  TextEditingController typeController = TextEditingController();
  TextEditingController rentalCostcontroller = TextEditingController();
  TextEditingController whoRentsController = TextEditingController();
  List<EPayments> payments = [
    EPayments.weekly,
    EPayments.monthly,
    EPayments.annually
  ];
  EPayments selected = EPayments.weekly;
  @override
  void initState() {
    super.initState();
    if (widget.isEdit) {
      typeController.text = widget.editEstate.type!;
      rentalCostcontroller.text =
          widget.editEstate.rentalCost!.toStringAsFixed(0);
      whoRentsController.text = widget.editEstate.whoRents!;
      selected = widget.editEstate.payments!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2321),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 65, 16, 16),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Row(
              children: [
                Icon(
                  Icons.chevron_left,
                  color: Color(0xFF5EC286),
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF5EC286),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'New estate',
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
          child: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'Type of estate',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: TextField(
                  cursorColor: Colors.white,
                  controller: typeController,
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF2E3C37),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (text) {
                    typeController.text = text;
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'Rental cost',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: TextField(
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  controller: rentalCostcontroller,
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF2E3C37),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (text) {
                    rentalCostcontroller.text = text;
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal, child: getPayments()),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'Who rents from you?',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: TextField(
                  cursorColor: Colors.white,
                  controller: whoRentsController,
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF2E3C37),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (text) {
                    whoRentsController.text = text;
                    setState(() {});
                  },
                ),
              ),
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
          child: InkWell(
            onTap: () {
              if (!widget.isEdit) {
                if (typeController.text.isNotEmpty &&
                    rentalCostcontroller.text.isNotEmpty &&
                    whoRentsController.text.isNotEmpty) {
                  realEstate.id = const Uuid().v1();
                  realEstate.type = typeController.text;
                  realEstate.rentalCost =
                      double.parse(rentalCostcontroller.text);
                  realEstate.whoRents = whoRentsController.text;
                  realEstate.payments = selected;
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => AddCommentPage(
                              isEdit: false,
                              editEstate: RealEstateItem(),
                            )),
                  );
                }
              } else {
                if (typeController.text.isNotEmpty &&
                    rentalCostcontroller.text.isNotEmpty &&
                    whoRentsController.text.isNotEmpty) {
                  editRealEstate.id = widget.editEstate.id;
                  editRealEstate.type = typeController.text;
                  editRealEstate.rentalCost =
                      double.parse(rentalCostcontroller.text);
                  editRealEstate.whoRents = whoRentsController.text;
                  editRealEstate.payments = selected;
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => AddCommentPage(
                              isEdit: widget.isEdit,
                              editEstate: widget.editEstate,
                            )),
                  );
                }
              }
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: typeController.text.isNotEmpty &&
                          rentalCostcontroller.text.isNotEmpty &&
                          whoRentsController.text.isNotEmpty
                      ? const Color(0xFF5EC286)
                      : const Color(0xFF5EC286).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'Next',
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

  Widget getPayments() {
    List<Widget> list = [];
    for (var payment in payments) {
      list.add(InkWell(
        onTap: () {
          selected = payment;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: const Color(0xFF2E3C37),
              border: Border.all(
                  color: selected == payment
                      ? const Color(0xFF5EC286)
                      : Colors.transparent),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            payment.text,
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                color: selected == payment
                    ? const Color(0xFF5EC286)
                    : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
      ));
      list.add(const SizedBox(
        width: 8,
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: list,
    );
  }
}
