import 'package:flutter/material.dart';
import 'package:real_estate_app/model/real_estate_item.dart';
import 'package:real_estate_app/pages/home_page.dart';

class AddCommentPage extends StatefulWidget {
  const AddCommentPage(
      {super.key, required this.isEdit, required this.editEstate});
  final bool isEdit;
  final RealEstateItem editEstate;

  @override
  State<AddCommentPage> createState() => _AddCommentPageState();
}

class _AddCommentPageState extends State<AddCommentPage> {
  TextEditingController commentController = TextEditingController();
  List<EState> stateList = [EState.perfect, EState.average, EState.bad];
  EState selected = EState.perfect;
  @override
  void initState() {
    super.initState();
    if (widget.isEdit) {
      commentController.text = widget.editEstate.type!;
      selected = widget.editEstate.state!;
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
                        'Write a comment about real estate',
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
                  maxLines: 4,
                  controller: commentController,
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
                    commentController.text = text;
                    setState(() {});
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'State of estate',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: getStates(),
              )
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: InkWell(
            onTap: () {
              if (!widget.isEdit) {
                if (commentController.text.isNotEmpty) {
                  realEstate.comment = commentController.text;
                  realEstate.state = selected;
                  realEstateList.add(realEstate);
                  addData();
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage()),
                  );
                }
              } else {
                if (commentController.text.isNotEmpty) {
                  editRealEstate.comment = commentController.text;
                  editRealEstate.state = selected;
                  realEstateList.removeWhere(
                      (element) => element.id == editRealEstate.id);
                  realEstateList.add(editRealEstate);
                  addData();
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage()),
                  );
                }
              }
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: commentController.text.isNotEmpty
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

  Widget getStates() {
    List<Widget> list = [];
    for (var payment in stateList) {
      list.add(InkWell(
        onTap: () {
          selected = payment;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
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
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }
}
