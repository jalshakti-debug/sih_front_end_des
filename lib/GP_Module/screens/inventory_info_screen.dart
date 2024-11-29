import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widgets/global_backgroung.dart';
import '../../common_widgets/layout_builder_common.dart';


class GpInventoryInfoScreen extends StatefulWidget {
  const GpInventoryInfoScreen({super.key});

  @override
  State<GpInventoryInfoScreen> createState() =>
      _GpInventoryInfoScreenState();
}

class _GpInventoryInfoScreenState extends State<GpInventoryInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilderCommon(
      mobileDesign: GlobalBackground(child: mobileDesign()),
    );
  }

  Widget mobileDesign() {
    final screenSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: screenSize * 0.1,
        title:  Text(
          'Inventory Info',
          softWrap: true,
          maxLines: 2,
          style: GoogleFonts.urbanist(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Container(
              height: screenSize * 0.06,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(width: 0.5)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      child: Text(
                        'Chemicals',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.all(8),
                  color: Colors.blue[100],
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2,
                                horizontal: 2),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 4,
                                  horizontal: 4),
                              decoration: BoxDecoration(
                                color:
                                Color.fromARGB(210, 227, 242, 250),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.inventory,
                                            size: screenSize * 0.055,
                                          ),
                                          Text(
                                            'Hydrozon Peroxide '
                                            'asfsadfasdfasd',
                                            softWrap: true,
                                            maxLines: 3,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                   Expanded(
                                    flex: 3,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('Remaining\nXX l',
                                      style: GoogleFonts.robotoMono(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}