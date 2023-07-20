import 'package:app/story_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            "logo/facebook.jpg",
            height: 50,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              child: Icon(FontAwesomeIcons.plus, color: Colors.black),
            ),
            SizedBox(
              width: 8,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              child:
                  Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.black),
            ),
            SizedBox(
              width: 8,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              child:
                  Icon(FontAwesomeIcons.facebookMessenger, color: Colors.black),
            ),
          ]),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fktm9-2.fna.fbcdn.net/v/t1.6435-9/128540062_3071923549697939_5524684339364437842_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=e3f864&_nc_ohc=fwLAdp3bgooAX8B5Yaa&_nc_ht=scontent.fktm9-2.fna&oh=00_AfDYi0U2VWkm591Icvgw-FrcDYCIpYu3tNJNdSi_uMjMMQ&oe=64DD6EC2"),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Text("What's on your mind"),
                ),
                Icon(FontAwesomeIcons.image)
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Divider(
                thickness: 10,
              ),
              TabBar(
                controller: tabController,
                unselectedLabelStyle: TextStyle(fontSize: 16),
                labelStyle: TextStyle(
                  fontSize: 16,
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "Stories",
                  ),
                  Tab(
                    text: "Reels",
                  )
                ],
              ),
              SizedBox(
                  height: 260,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ListView(
                        padding: EdgeInsets.all(16),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                color: Colors.grey.shade300,
                              ),
                              //height: 260,
                              width: 140,
                              clipBehavior: Clip.hardEdge,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Image.network(
                                      "https://images.pexels.com/photos/15236595/pexels-photo-15236595/free-photo-of-baku.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              "Create\nStory",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )),
                                        Positioned(
                                          top: -20,
                                          left: 47,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: CircleAvatar(
                                                child: Icon(
                                                  FontAwesomeIcons.plus,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 12,
                          ),
                          ListView.separated(
                            itemBuilder: ((context, index) => Stories()),
                            separatorBuilder: (context, Index) => SizedBox(
                              width: 12,
                            ),
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                          )
                        ],
                      )
                    ],
                  ))
            ],
          )),
          Divider(
            thickness: 10,
          ),
          Container(
              child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: " C-rish Jung Thapa",
                            children: [
                              TextSpan(
                                  text: " Added a new rell",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Row(
                        children: [
                          Text("Mask off"),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            FontAwesomeIcons.music,
                            size: 14,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text("data"),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            FontAwesomeIcons.music,
                            size: 14,
                          ),
                        ],
                      )
                    ],
                  )),
                  Icon(Icons.abc)
                ],
              ),
              Image.network(""),
              Row()
            ],
          ))
        ],
      ),
    );
  }
}
