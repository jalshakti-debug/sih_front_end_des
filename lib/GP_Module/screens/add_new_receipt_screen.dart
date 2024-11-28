import 'package:flutter/material.dart';

class GpAddNewReceiptScreen extends StatefulWidget {
  const GpAddNewReceiptScreen({super.key});

  @override
  State<GpAddNewReceiptScreen> createState() => _GpAddNewReceiptScreenState();
}

class _GpAddNewReceiptScreenState extends State<GpAddNewReceiptScreen> {
  String? selectedReason;
  final List<String> reasList = [
    'Asset Repair',
    'Maintenance Work',
    'Emergency'
  ];
  late FocusNode amountfocus;
  late FocusNode reasonfocus;

  @override
  void initState() {
    super.initState();
    amountfocus = FocusNode();
    reasonfocus = FocusNode();
  }

  @override
  void dispose() {
    amountfocus.dispose();
    reasonfocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: FlexibleSpaceBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 16),
                    SizedBox(
                      width: screenSize * 0.25,
                      child: const Text(
                        'Add New Receipt',
                        softWrap: true,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenSize * 0.06,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                        side: BorderSide(width: 0.5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
                        child: Text('Expenditure'),
                      )),
                  );
                },
              ),
            ),
            Text(
              'Submit funding requirements for approval',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Catagory:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(4)),
                    child: DropdownButton(
                      isExpanded: true,
                      iconSize: 30,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.black,
                      items: reasList.map((item) {
                        return DropdownMenuItem(
                          child: Text(
                            item.toString(),
                          ),
                          value: item.toString(),
                        );
                      }).toList(),
                      hint: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Select Catagory",
                        ),
                      ),
                      onChanged: (newVal) {
                        setState(() {
                          selectedReason = newVal;
                        });
                      },
                      value: selectedReason,
                    ),
                  ),
                  SizedBox(
                    height: screenSize * 0.025,
                  ),
                  Text(
                    'Amount:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    focusNode: reasonfocus,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(amountfocus);
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Enter Amount'),
                  ),
                  SizedBox(
                    height: screenSize * 0.025,
                  ),
                  Text(
                    'Description:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  TextField(
                    maxLines: 10,
                    focusNode: amountfocus,
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Describe the transaction details'),
                  ),
                  SizedBox(
                    height: screenSize * 0.025,
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () {}, child: Text('Submit Request')))
          ],
        ),
      ),
    );
  }
}
