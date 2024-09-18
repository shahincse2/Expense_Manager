import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Color(0xff81C2BE),
          leadingWidth: double.infinity,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Day to Day Expenses',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        textWidthBasis: TextWidthBasis.parent,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.cloud_upload,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          bottom: TabBar(
            padding: EdgeInsets.zero,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.white60,
            labelStyle: TextStyle(color: Colors.white),
            labelPadding: EdgeInsets.zero,
            tabs: [
              Tab(
                child: Icon(
                  Icons.edit,
                  size: 24,
                ),
              ),
              Tab(
                child: Text(
                  'DAILY',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'MONTHLY',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'YEARLY',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'Edit',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Center(
              child: Text(
                'Daily',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            buildMonthlyExpenseDetails(),
            Center(
              child: Text(
                'Yearly',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMonthlyExpenseDetails() {
    return Column(
      children: [
        buildDateSelection(),
        buildDebitCreditDashboard(),
        Container(
          height: 250,
          width: double.infinity,
          child: Card(
            color: Color(0xffDBE9E9),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('18 September 2024',
                      style: TextStyle(
                        fontSize: 18,
                      ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Income (Credit) = '),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Total Balamce (Debit) = '),
                          Text('\$13,220.00'),
                          Text('Balance = -\$1,220.00'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildDateSelection() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 50,
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Color(0xff5E8886),
          borderOnForeground: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
              Text(
                'September 2024',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDebitCreditDashboard() {
    return Container(
      height: 84,
      width: double.infinity,
      child: Card(
        color: Color(0xffDBE9E9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Income (Credit) = '),
                  Text('\$12,000.00'),
                  Text('C/F = \$0.00'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Total Balamce (Debit) = '),
                  Text('\$13,220.00'),
                  Text('Balance = -\$1,220.00'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
