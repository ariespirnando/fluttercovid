part of 'page.dart';

class ListProvinsiPage extends StatefulWidget {
  @override
  _ListProvinsiPageState createState() => _ListProvinsiPageState();
}

class _ListProvinsiPageState extends State<ListProvinsiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 69, 180, 92),
          title: Text("List Provinsi",
              style: blackTextFont.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  context
                      .bloc<DataBloc>()
                      .add(EventLoadKasusProvinsi(kodeProvinsi: "0"));
                  context.bloc<PageBloc>().add(GoToHomePage());
                })
          ],
        ),
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child:
                    BlocBuilder<DataBloc, DataState>(builder: (_, dataState) {
                  if (dataState is LoadProvinsi) {
                    List<Provinsi> prov = dataState.resultProvinsi.provinsi;
                    return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: prov.length,
                        itemBuilder: (_, index) => Container(
                                child: GestureDetector(
                              onTap: () {
                                context.bloc<DataBloc>().add(
                                    EventLoadKasusProvinsi(
                                        kodeProvinsi:
                                            prov[index].kodeProvinsi));
                                context.bloc<PageBloc>().add(GoToHomePage());
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: 8,
                                  bottom: (index == prov.length -1) ? 20 : 0
                                ),
                                width:
                                    MediaQuery.of(context).size.width - 2 * 12,
                                height: 40,
                                decoration: BoxDecoration( 
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xFFADADAD), width: 1),
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 18,
                                      ),
                                      child: Text(prov[index].namaProvinsi,
                                          style: blackTextFont.copyWith(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                          right: 12,
                                        ),
                                        child: Icon(
                                          Icons.keyboard_arrow_right, color: Color(0xFFADADAD),))
                                  ],
                                ),
                              ),
                            )));

                    //return Text("Udah di Load");
                  } else {
                    return SpinKitFadingCircle(
                        color: Color(0xFFADADAD),
                        size: 50,
                      );
                  }
                }))));
  }
}
