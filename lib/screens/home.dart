import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sales_dashboard/widgets/calendar_widget.dart';
import 'package:sales_dashboard/widgets/camanbert_model.dart';
import 'package:sales_dashboard/widgets/day_data_model.dart';
import 'package:sales_dashboard/widgets/month_sales_stats.dart';
import 'package:sales_dashboard/widgets/visitors_progress_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height - 170,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Kronos",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 32),
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(30),
                            shadowColor: Colors.white.withOpacity(0.1),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 30),
                              width: 300,
                              height: 160,
                              decoration: BoxDecoration(
                                color: const Color(0xff0BF4C8),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Weekly balance",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff161717),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "\$20k",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff161717),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        Text(
                                          "view entire list?",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff161717),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.account_balance_wallet_rounded,
                                    size: 70,
                                    color: Color(0xff242424),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Gap(25),
                          Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(30),
                            shadowColor: Colors.white.withOpacity(0.1),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 30),
                              width: 300,
                              height: 160,
                              decoration: BoxDecoration(
                                color: const Color(0xffFAD85D),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Orders in line",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff161717),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "750",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff161717),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        Text(
                                          "view entire list?",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff161717),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.local_grocery_store_rounded,
                                    size: 70,
                                    color: Color(0xff242424),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Gap(25),
                          Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(30),
                            shadowColor: Colors.white.withOpacity(0.1),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 30),
                              width: 300,
                              height: 160,
                              decoration: BoxDecoration(
                                color: const Color(0xffF2A0FF),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "New Clients",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff161717),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "150",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff161717),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        Text(
                                          "view entire list?",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff161717),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.person_rounded,
                                    size: 70,
                                    color: Color(0xff242424),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              width: 625,
                              height: 296,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff161717),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Sales",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Material(
                                            elevation: 3,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            shadowColor: Colors.white,
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 100,
                                              height: 34,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff161717),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  const Icon(
                                                    Icons
                                                        .calendar_today_outlined,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "2022",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 13),
                                                  ),
                                                  const Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Gap(20),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 103,
                                            height: 34,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: const Color(0xffFAD85D),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.file_download_outlined,
                                                  color: Color(0xff161717),
                                                  size: 20,
                                                ),
                                                Text(
                                                  "Dowload",
                                                  style: GoogleFonts.poppins(
                                                      color: const Color(
                                                          0xff161717),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 13),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const Gap(20),
                                  Container(
                                      width: 550,
                                      height: 200,
                                      child: MonthSalesStatsWidget()),
                                ],
                              ),
                            ),
                            const Gap(40),
                            Container(
                              width: 281,
                              alignment: Alignment.center,
                              height: 296,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff161717),
                              ),
                              child: CalendarWidget(),
                            ),
                          ],
                        ),
                      ),
                      const Gap(20),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 283,
                              height: 248,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff161717),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Weekly Sales",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400)),
                                  Gap(20),
                                  Container(
                                      width: 283,
                                      height: 165,
                                      child: BarChartSample1()),
                                ],
                              ),
                            ),
                            const Gap(40),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              width: 630,
                              height: 248,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff161717),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Custommer Details",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Material(
                                            elevation: 3,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            shadowColor: Colors.white,
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 76,
                                              height: 34,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: const Color(0xff161717),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Icon(
                                                    Icons.filter_list,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "Filter",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 13),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Gap(20),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 103,
                                            height: 34,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: const Color(0xffFAD85D),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.file_download_outlined,
                                                  color: Color(0xff161717),
                                                  size: 20,
                                                ),
                                                Text(
                                                  "Dowload",
                                                  style: GoogleFonts.poppins(
                                                      color: const Color(
                                                          0xff161717),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 13),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const Gap(25),
                                  SizedBox(
                                    width: 620,
                                    height: 148,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          DividerTheme(
                                              data: DividerThemeData(
                                                  color: Colors.white
                                                      .withOpacity(0.3)),
                                              child: DataTable(
                                                dataRowHeight: 30,
                                                headingRowHeight: 35,
                                                showCheckboxColumn: true,
                                                sortAscending: true,
                                                columns: <DataColumn>[
                                                  DataColumn(
                                                    label: Text(
                                                      "id",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 13),
                                                    ),
                                                  ),
                                                  DataColumn(
                                                    label: Text(
                                                      "Custommer",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 13),
                                                    ),
                                                  ),
                                                  DataColumn(
                                                    label: Text(
                                                      "Date",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 13),
                                                    ),
                                                  ),
                                                  DataColumn(
                                                    label: Text(
                                                      "Ammount",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 13),
                                                    ),
                                                  ),
                                                  DataColumn(
                                                    label: Text(
                                                      "Status",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 13),
                                                    ),
                                                  ),
                                                ],
                                                rows: <DataRow>[
                                                  DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(
                                                        Text(
                                                          "KR7845C",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "UDS",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "26/02/2023",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "\$25000",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "Shipped",
                                                          style: GoogleFonts.poppins(
                                                              color: const Color(
                                                                  0xffFAD85D),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(
                                                        Text(
                                                          "KCO2545",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "GARBA-SERVICES",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "12/05/2023",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "\$45500",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "Delivered",
                                                          style: GoogleFonts.poppins(
                                                              color: const Color(
                                                                  0xff73FFCC),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(
                                                        Text(
                                                          "KR21230",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "KOLIKO & Frères",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "12/06/2022",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "\$2500",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "Paid",
                                                          style: GoogleFonts.poppins(
                                                              color: const Color(
                                                                  0xff6F82E8),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(
                                                        Text(
                                                          "KL12540",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "THEMA",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "12/01/2023",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "\$7540",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "Pending",
                                                          style: GoogleFonts.poppins(
                                                              color: const Color(
                                                                  0xffCA4230),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(
                                                        Text(
                                                          "KR7845C",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "UDS",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "26/02/2023",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "\$25000",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "Shipped",
                                                          style: GoogleFonts.poppins(
                                                              color: const Color(
                                                                  0xffFAD85D),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(
                                                        Text(
                                                          "KCO2545",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "GARBA-SERVICES",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "12/05/2023",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "\$45500",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "Delivered",
                                                          style: GoogleFonts.poppins(
                                                              color: const Color(
                                                                  0xff73FFCC),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(
                                                        Text(
                                                          "KR21230",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "KOLIKO & Frères",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "12/06/2022",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "\$2500",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "Paid",
                                                          style: GoogleFonts.poppins(
                                                              color: const Color(
                                                                  0xff6F82E8),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(
                                                        Text(
                                                          "KL12540",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "THEMA",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "12/01/2023",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "\$7540",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize: 10),
                                                        ),
                                                      ),
                                                      DataCell(
                                                        Text(
                                                          "Pending",
                                                          style: GoogleFonts.poppins(
                                                              color: const Color(
                                                                  0xffCA4230),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 307,
                      height: 808,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff161717),
                      ),
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(Icons.picture_in_picture,
                                  size: 25, color: Colors.white),
                            ),
                            const Gap(5),
                            Column(children: [
                              Text(
                                "Coding.Shop",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8),
                              ),
                              Text(
                                "(IntelliJ)",
                                style: GoogleFonts.poppins(
                                    color: Colors.white.withOpacity(0.3),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8),
                              ),
                            ])
                          ]),
                          Gap(40),
                          Container(
                            child: Row(children: [
                              Gap(20),
                              Container(
                                  width: 120,
                                  height: 120,
                                  child: SocialNetworkStatsWidget()),
                              const Gap(30),
                              Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Container(
                                          width: 12,
                                          height: 12,
                                          decoration: BoxDecoration(
                                              color: const Color(0xffffc9c0),
                                              borderRadius:
                                                  BorderRadius.circular(2))),
                                      const Gap(20),
                                      Text(
                                        "Facebook",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 9),
                                      ),
                                    ]),
                                    const Gap(20),
                                    Row(children: [
                                      Container(
                                          width: 12,
                                          height: 12,
                                          decoration: BoxDecoration(
                                              color: Colors.teal,
                                              borderRadius:
                                                  BorderRadius.circular(2))),
                                      const Gap(20),
                                      Text(
                                        "Youtube",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 9),
                                      ),
                                    ]),
                                    const Gap(20),
                                    Row(children: [
                                      Container(
                                          width: 12,
                                          height: 12,
                                          decoration: BoxDecoration(
                                              color: const Color(0xfffe7070),
                                              borderRadius:
                                                  BorderRadius.circular(2))),
                                      const Gap(20),
                                      Text(
                                        "Instagram",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 9),
                                      ),
                                    ]),
                                    const Gap(20),
                                    Row(children: [
                                      Container(
                                          width: 12,
                                          height: 12,
                                          decoration: BoxDecoration(
                                              color: const Color(0xffd1f5a6),
                                              borderRadius:
                                                  BorderRadius.circular(2))),
                                      const Gap(20),
                                      Text(
                                        "Website",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 9),
                                      ),
                                    ]),
                                  ]),
                            ]),
                          ),
                          const Gap(50),
                          Text("Distributions of sales across plateform",
                              style: GoogleFonts.poppins(
                                  color: Colors.white.withOpacity(0.3),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400)),
                          const Gap(10),
                          Divider(
                              height: 2, color: Colors.white.withOpacity(0.2)),
                          const Gap(20),
                          Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              width: 189,
                              height: 36,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(0.2)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.calendar_today_outlined,
                                        size: 25, color: Colors.white),
                                    Text("05th-12th Jan",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400)),
                                    const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        size: 25,
                                        color: Colors.white),
                                  ])),
                          const Gap(35),
                          Column(children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total Intake",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                  const Gap(30),
                                  Text("1500k",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                ]),
                            const Gap(11),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New Customers",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                  const Gap(30),
                                  Row(
                                    children: [
                                      Text("7k",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400)),
                                      const Gap(11),
                                      Text("+1k",
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff21bb85),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ]),
                            const Gap(11),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Repeat Customers",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                  const Gap(30),
                                  Text("1.5k",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                ]),
                            const Gap(10),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total Revenue",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                  const Gap(30),
                                  Text("130k",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                ]),
                          ]),
                          Gap(20),
                          Divider(
                              height: 2, color: Colors.white.withOpacity(0.2)),
                          Gap(30),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Online visitors",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                                Gap(5),
                                Text("20k",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600)),
                                Gap(5),
                                VisitorProgressBar(
                                  progressValue: 0.7,
                                ),
                                Gap(35),
                                Text("Offline visitors",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                                Gap(5),
                                Text("7k",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600)),
                                Gap(5),
                                VisitorProgressBar(
                                  progressValue: 0.5,
                                ),
                                Gap(5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
