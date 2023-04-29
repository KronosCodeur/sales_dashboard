import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      isShowingMainData ? sampleData1 : sampleData2,
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 1,
        maxX: 12,
        maxY: 4,
        minY: 1,
      );

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        lineBarsData: lineBarsData2,
        minX: 1,
        maxX: 12,
        maxY: 6,
        minY: 1,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.white.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
      ];

  LineTouchData get lineTouchData2 => LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData2 => [
        lineChartBarData2_1,
        lineChartBarData2_2,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    final style = GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      color: Colors.white.withOpacity(0.1),
      fontSize: 13,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '\$10k';
        break;
      case 2:
        text = '\$20k';
        break;
      case 3:
        text = '\$30k';
        break;
      case 4:
        text = '\$40k';
        break;
      case 5:
        text = '\$50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      color: Colors.white.withOpacity(0.1),
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('1', style: style);
        break;
      case 2:
        text = Text('2', style: style);
        break;
      case 3:
        text = Text('3', style: style);
        break;
      case 4:
        text = Text('4', style: style);
        break;
      case 5:
        text = Text('5', style: style);
        break;
      case 6:
        text = Text('6', style: style);
        break;
      case 7:
        text = Text('7', style: style);
        break;
      case 8:
        text = Text('8', style: style);
        break;
      case 9:
        text = Text('9', style: style);
        break;
      case 10:
        text = Text('10', style: style);
        break;
      case 11:
        text = Text('11', style: style);
        break;
      case 12:
        text = Text('12', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(
        show: true,
        drawHorizontalLine: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.white.withOpacity(0.1),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.white.withOpacity(0.1),
            strokeWidth: 1,
          );
        },
      );

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(color: Colors.white.withOpacity(0.2), width: 2),
          left: BorderSide(color: Colors.white.withOpacity(0.2), width: 2),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: const Color(0xff845ED7),
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: [
          const FlSpot(1, 1),
          const FlSpot(2, 1.5),
          const FlSpot(5, 1.4),
          const FlSpot(8, 3.4),
          const FlSpot(10, 2),
          const FlSpot(11, 2.2),
          const FlSpot(12, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: const Color(0xff73FFCC),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
          color: Colors.pinkAccent.withOpacity(0),
        ),
        spots: [
          const FlSpot(1, 1.5),
          const FlSpot(3, 2.8),
          const FlSpot(7, 1.2),
          const FlSpot(10, 2.8),
          const FlSpot(11, 2.6),
          const FlSpot(12, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData2_1 => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0,
        color: const Color(0xff73FFCC),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: [
          const FlSpot(1, 1),
          const FlSpot(3, 4),
          const FlSpot(5, 1.8),
          const FlSpot(7, 5),
          const FlSpot(10, 2),
          const FlSpot(11, 2.2),
          const FlSpot(12, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
        isCurved: true,
        color: const Color(0xff845ED7),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: Colors.pinkAccent.withOpacity(0.2),
        ),
        spots: [
          const FlSpot(1, 1),
          const FlSpot(3, 2.8),
          const FlSpot(7, 1.2),
          const FlSpot(10, 2.8),
          const FlSpot(11, 2.6),
          const FlSpot(12, 3.9),
        ],
      );
}

class MonthSalesStatsWidget extends StatefulWidget {
  const MonthSalesStatsWidget({super.key});

  @override
  State<StatefulWidget> createState() => MonthSalesStatsWidgetState();
}

class MonthSalesStatsWidgetState extends State<MonthSalesStatsWidget> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: _LineChart(isShowingMainData: isShowingMainData),
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white.withOpacity(isShowingMainData ? 1.0 : 0.5),
            ),
            onPressed: () {
              setState(() {
                isShowingMainData = !isShowingMainData;
              });
            },
          )
        ],
      ),
    );
  }
}
