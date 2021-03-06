import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))
                        StorageDetails(
                            pieChartSectionData: pieChartSectionData),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we don't want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(
                        pieChartSectionData: pieChartSectionData),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> pieChartSectionData = [
    PieChartSectionData(
      value: 25,
      color: primaryColor,
      showTitle: false,
      radius: 25,
    ),
    PieChartSectionData(
      value: 20,
      color: Color(0xFF26E5FF),
      showTitle: false,
      radius: 22,
    ),
    PieChartSectionData(
      value: 10,
      color: Color(0xFFFFCF26),
      showTitle: false,
      radius: 19,
    ),
    PieChartSectionData(
      value: 15,
      color: Color(0xFFEE2727),
      showTitle: false,
      radius: 16,
    ),
    PieChartSectionData(
      value: 25,
      color: primaryColor.withOpacity(0.1),
      showTitle: false,
      radius: 13,
    ),
  ];
}
