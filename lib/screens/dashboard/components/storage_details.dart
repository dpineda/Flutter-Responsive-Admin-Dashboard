import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
    @required this.pieChartSectionData,
  }) : super(key: key);

  final List<PieChartSectionData> pieChartSectionData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Starage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Chart(pieChartSectionData: pieChartSectionData),
          StorageInfoCard(
            title: "Douments Files",
            svgSrc: "assets/icons/Documents.svg",
            numOfFiles: 1329,
            amountOfFiles: "1.3GB",
          ),
          StorageInfoCard(
            title: "Media Files",
            svgSrc: "assets/icons/media.svg",
            numOfFiles: 1329,
            amountOfFiles: "15.3GB",
          ),
          StorageInfoCard(
            title: "Other Files",
            svgSrc: "assets/icons/folder.svg",
            numOfFiles: 1329,
            amountOfFiles: "1.3GB",
          ),
          StorageInfoCard(
            title: "Unknown",
            svgSrc: "assets/icons/unknown.svg",
            numOfFiles: 140,
            amountOfFiles: "1.3GB",
          ),
        ],
      ),
    );
  }
}
