part of 'widget.dart';

Widget loadContent(BuildContext context) => Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Color(0xFFADADAD), width: 1)),
                child: GestureDetector(
                  onTap: () {
                    //Ini Action untuk nampilin popup atau pindah screen
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SpinKitFadingCircle(
                        color: Color(0xFFADADAD),
                        size: 40,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Update Kasus Corona',
                    style: blackTextFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w500)),
              ),
            
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width:
                        (MediaQuery.of(context).size.width - (2 * 10) - 20) / 3,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFADADAD), width: 1)),
                    child: Container(
                        child: SpinKitFadingCircle(
                      color: Color(0xFFADADAD),
                      size: 50,
                    )),
                  ),
                  Container(
                    width:
                        (MediaQuery.of(context).size.width - (2 * 10) - 20) / 3,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFADADAD), width: 1)),
                    child: Container(
                        child: SpinKitFadingCircle(
                      color: Color(0xFFADADAD),
                      size: 50,
                    )),
                  ),
                  Container(
                    width:
                        (MediaQuery.of(context).size.width - (2 * 10) - 20) / 3,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFADADAD), width: 1)),
                    child: Container(
                        child: SpinKitFadingCircle(
                      color: Color(0xFFADADAD),
                      size: 50,
                    )),
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
                        fontSize: 18, fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: (MediaQuery.of(context).size.width - (2 * 10)),
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFADADAD), width: 1)),
                child: Container(
                    child: SpinKitFadingCircle(
                  color: Color(0xFFADADAD),
                  size: 50,
                )),
              ),
            ],
          ),
        )
      ],
    );
