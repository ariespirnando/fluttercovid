part of 'page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              imageBackground(context),
              logoBackground(context),
              Column(
                children: <Widget>[
                  SizedBox(
                      height: (MediaQuery.of(context).size.width * 0.7) / 1.2),
                  Container(
                    height: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).size.width / 10,
                    //height: 1000,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: BlocBuilder<DataBloc, DataState>(
                        builder: (_, dataState) {
                      if (dataState is LoadKasusPerProvinsi) {
                        Kasus rs = dataState.resultKasusProvinsi.kasusProvinsi;
                        print(rs.namaProvinsi);
                        return Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: () {
                                        context
                                            .bloc<DataBloc>()
                                            .add(EventLoadProvinsi());
                                        context
                                            .bloc<PageBloc>()
                                            .add(GoToListProvinsi());
                                      }, //Ini Action untuk nampilin popup atau pindah screen
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border: Border.all(
                                                color: Color(0xFFADADAD),
                                                width: 1)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    height: 20,
                                                    child: Image(
                                                        image: AssetImage(
                                                            icpoint)),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(rs.namaProvinsi,
                                                        style: blackTextFont
                                                            .copyWith(
                                                                fontSize: 14,
                                                                color: Colors.black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w100)),
                                                  )
                                                  //Content
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 15),
                                              height: 20,
                                              child: Icon(
                                                  Icons.keyboard_arrow_down),
                                            ),
                                          ],
                                        ),
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Update Kasus Corona',
                                        style: blackTextFont.copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    (2 * 10) -
                                                    20) /
                                                3,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xFFADADAD),
                                                width: 1)),
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 18,
                                            ),
                                            Text(rs.kasusPositif,
                                                style: blackTextFont.copyWith(
                                                    fontSize: 30,
                                                    color: Color.fromARGB(
                                                        255, 192, 204, 13),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text("Positif",
                                                style: blackTextFont.copyWith(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 192, 204, 13),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    (2 * 10) -
                                                    20) /
                                                3,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xFFADADAD),
                                                width: 1)),
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 18,
                                            ),
                                            Text(rs.kasusSembuh,
                                                style: blackTextFont.copyWith(
                                                    fontSize: 30,
                                                    color: Color.fromARGB(
                                                        255, 103, 197, 123),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text("Sembuh",
                                                style: blackTextFont.copyWith(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 103, 197, 123),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    (2 * 10) -
                                                    20) /
                                                3,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xFFADADAD),
                                                width: 1)),
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 18,
                                            ),
                                            Text(rs.kasusMeninggal,
                                                style: blackTextFont.copyWith(
                                                    fontSize: 30,
                                                    color: Color.fromARGB(
                                                        255, 216, 27, 96),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text("Meninggal",
                                                style: blackTextFont.copyWith(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 216, 27, 96),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Grafik Kasus Corona',
                                        style: blackTextFont.copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    width: (MediaQuery.of(context).size.width -
                                        (2 * 10)),
                                    height: 300,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 250, 250, 250),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Color(0xFFADADAD),
                                            width: 1)),
                                    child: SizedBox(
                                      height: 100,
                                      width: 100, 
                                      child: CartData(),
                                    )
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      } else {
                        return loadContent(context);
                      }
                    }),
                  ),
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
