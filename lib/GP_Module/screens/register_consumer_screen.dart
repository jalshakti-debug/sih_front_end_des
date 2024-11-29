import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widgets/global_backgroung.dart';
import '../../common_widgets/layout_builder_common.dart';

class GpRegisterConsumerScreen extends StatefulWidget {
  const GpRegisterConsumerScreen({super.key});

  @override
  State<GpRegisterConsumerScreen> createState() =>
      _GpRegisterConsumerScreenState();
}

class _GpRegisterConsumerScreenState extends State<GpRegisterConsumerScreen> {
  String? selectedReason;
  final List<String> conList = ['Household', 'School', 'AWC'];
  late FocusNode conNameFocus;
  late FocusNode mobFocus;
  late FocusNode aadhaarFocus;
  late FocusNode addressFocus;

  @override
  void initState() {
    super.initState();
    conNameFocus = FocusNode();
    mobFocus = FocusNode();
    aadhaarFocus = FocusNode();
    addressFocus = FocusNode();
  }

  @override
  void dispose() {
    conNameFocus.dispose();
    mobFocus.dispose();
    aadhaarFocus.dispose();
    addressFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilderCommon(
      mobileDesign: GlobalBackground(child: mobileDesign()),
    );
  }
  Widget mobileDesign() {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Register Consumer',
          softWrap: true,
          maxLines: 2,
          style: GoogleFonts.getFont(
            'Urbanist',
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter Consumer Details:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Consumer Type:',
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
                        items: conList.map((item) {
                          return DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                item.toString(),
                              ),
                            ),
                            value: item.toString(),
                          );
                        }).toList(),
                        hint: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Select Consmer Type",
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
                      'Consumer Name:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      focusNode: conNameFocus,
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(mobFocus);
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Consumer Name'),
                    ),
                    SizedBox(
                      height: screenSize * 0.025,
                    ),
                    Text(
                      'Mobile Number:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      focusNode: mobFocus,
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(aadhaarFocus);
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Mobile Number'),
                    ),
                    SizedBox(
                      height: screenSize * 0.025,
                    ),
                    Text(
                      'Aadhar Id:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      focusNode: aadhaarFocus,
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(addressFocus);
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Aadhar Id'),
                    ),
                    SizedBox(
                      height: screenSize * 0.025,
                    ),
                    Text(
                      'Address:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      maxLines: 5,
                      focusNode: addressFocus,
                      onEditingComplete: () {
                        FocusScope.of(context).unfocus();
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Address'),
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
      ),
    );
  }
}
