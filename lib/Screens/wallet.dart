import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:personal_proj/Components/SpendatureTile.dart';
import 'package:personal_proj/Components/barchart.dart';
import 'package:personal_proj/Components/userdetails.dart';
import 'package:personal_proj/Components/wallet_week.dart';
import 'package:personal_proj/Extras/colors.dart';
import 'package:personal_proj/Screens/account.dart';
import 'package:personal_proj/my_drawer.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: darkcolor,
            appBar: AppBar(
              toolbarHeight: 0,
              backgroundColor: darkcolor,
              bottom: const TabBar(
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                  unselectedLabelColor: Colors.white,
                  indicator: ShapeDecoration(
                      shape: SquircleBorder(), color: Colors.white),
                  tabs: [
                    Tab(text: 'Daily'),
                    Tab(text: 'Weekly'),
                    Tab(text: 'Monthly')
                  ]),
            ),
            body: TabBarView(children: [
              WeeklyWallet(
                timeCartegory: "Daily",
                initTimeFrame: '6:00',
                midTimeFrame: '12:00',
                finalTimeFrame: '18:00', spendStatistics: dailyStart,
              ),
              WeeklyWallet(
                  timeCartegory: "Weekly",
                  initTimeFrame: 'Sun',
                  midTimeFrame: 'Wed',
                  finalTimeFrame: "Fri", spendStatistics: weeklyStart,),
              WeeklyWallet(
                timeCartegory: "Monthly",
                initTimeFrame: "Jan",
                midTimeFrame: "May",
                finalTimeFrame: "Sep", spendStatistics: monthlyStart,
              ),
            ]),
          )),
    );
  }
}

class WeeklyWallet extends StatefulWidget {
  final String timeCartegory;
  final String initTimeFrame;
  final String midTimeFrame;
  final String finalTimeFrame;
  final List<FlSpot> spendStatistics;
  const WeeklyWallet(
      {Key? key,
      required this.timeCartegory,
      required this.initTimeFrame,
      required this.midTimeFrame,
      required this.finalTimeFrame, required this.spendStatistics})
      : super(key: key);

  @override
  State<WeeklyWallet> createState() => _WeeklyWalletState();
}

class _WeeklyWalletState extends State<WeeklyWallet> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Divider(),
        Center(
            child: Text(
          "${widget.timeCartegory} Spendature",
          style: TextStyle(color: brightgrey, fontSize: 18),
        )),
        Divider(),
        LineChartSample2(
          timefrmae1: widget.initTimeFrame,
          timefrmae2: widget.midTimeFrame,
          timefrmae3: widget.finalTimeFrame,
          stat: widget.spendStatistics,
        ),
        Divider(),
        Center(
          child: Text(
            "Most Purchased",
            style: TextStyle(color: brightgrey, fontSize: 18),
          ),
        ),
        Divider(),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return MostUsedTile(mostUsed: spendature[index + 1]);
          },
        )
      ],
    );
  }
}

class MostUsedTile extends StatefulWidget {
  final Spendature mostUsed;
  const MostUsedTile({Key? key, required this.mostUsed}) : super(key: key);

  @override
  State<MostUsedTile> createState() => _MostUsedTileState();
}

class _MostUsedTileState extends State<MostUsedTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        widget.mostUsed.icon,
        size: 33,
        color: brightgrey,
      ),
      title: Text(
        "${widget.mostUsed.service}",
        style: const TextStyle(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
      ),
    );
  }
}
