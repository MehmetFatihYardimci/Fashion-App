import 'package:flutter/material.dart';
import 'package:moda_tasarim/detay.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.more,
                  size: 25,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  size: 25,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  size: 25,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  size: 25,
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Moda Uygulaması',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                // İlgili işlemleri yapın
              });
            },
            icon: Icon(
              Icons.camera,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 150,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  listeElemani('assets/model2.jpeg', 'assets/chanellogo.jpg'),
                  listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
                  listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                  listeElemani('assets/model3.jpeg', 'assets/chanellogo.jpg'),
                  listeElemani('assets/model1.jpeg', 'assets/louisvuitton.jpg'),
                  listeElemani('assets/model2.jpeg', 'assets/chanellogo.jpg'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 1,
                  child: Container(
                    height: 600,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    //color: Colors.amber.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/model1.jpeg')),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width - 145,
                                height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Daisy'),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '54 minute ago',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(Icons.more_vert),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Bu moda fotoğrafı, şık ve zarif bir stil sunuyor. Fotoğrafta kullanılan renkler ve kompozisyon, şıklığı vurguluyor ve moda dünyasının trendlerine uyum sağlıyor.'),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay('assets/modelgrid1.jpeg'),));
                                      },
                                      child: Hero(
                                        tag: 'assets/modelgrid1.jpeg',
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            child: Image.asset(
                                              'assets/modelgrid1.jpeg',
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: InkWell(
                                        onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay('assets/modelgrid2.jpeg'),));
                                      },
                                        child: Hero(
                                          tag: 'assets/modelgrid2.jpeg',
                                          child: Container(
                                              child: Image.asset(
                                            'assets/modelgrid2.jpeg',
                                            fit: BoxFit.cover,
                                          )),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: InkWell(
                                        onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detay('assets/modelgrid3.jpeg'),));
                                      },
                                        child: Hero(
                                          tag: 'assets/modelgrid3.jpeg',
                                          child: Container(
                                              child: Image.asset(
                                            'assets/modelgrid3.jpeg',
                                            fit: BoxFit.cover,
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0, vertical: 4),
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.brown.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      'Louis vuitton',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0, vertical: 4),
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.brown.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      'Minimalist',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0, vertical: 4),
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.brown.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      'Light',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.share,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '2.2k',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.comment,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '2.2k',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.comment,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '2.2k',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

Widget listeElemani(String s, String t) {
  return Column(
    children: [
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 75,
              width: 75,
              child: CircleAvatar(
                backgroundImage: AssetImage(s),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 10,
            child: Container(
              height: 25,
              width: 25,
              child: CircleAvatar(
                backgroundImage: AssetImage(t),
              ),
            ),
          ),
        ],
      ),
      Container(
        width: 75,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ],
  );
}
