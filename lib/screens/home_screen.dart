import 'package:dribble_events/internal/ui_colors.dart';
import 'package:dribble_events/models/event.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: Event.getMockEvents().length,
                itemBuilder: (context, index) => Container(
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(15.0),
                      topEnd: Radius.circular(15.0),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Image.network(
                                  Event.getMockEvents()[index].imageUrl,
                                  fit: BoxFit.cover,
                                ),
                                PositionedDirectional(
                                  end: 0.0,
                                  top: 0.0,
                                  width: 70.0,
                                  height: 70.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: UIColors.color3,
                                      borderRadius:
                                          BorderRadiusDirectional.only(
                                        bottomStart: Radius.circular(15.0),
                                      ),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Text("14"),
                                        Text("MAR"),
                                      ],
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  start: 0.0,
                                  bottom: 0.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      Event.getMockEvents()[index].title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .display3
                                          .copyWith(
                                            color: UIColors.color5,
                                            backgroundColor:
                                                Colors.black.withOpacity(0.3),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  Event.getMockEvents()[index].shortDescription,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline
                                      .copyWith(
                                        color: UIColors.color6,
                                      ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                      end: 8.0,
                                    ),
                                    child: Icon(
                                      Icons.location_on,
                                      color: UIColors.color3,
                                      size: 20.0,
                                    ),
                                  ),
                                  Text(
                                    Event.getMockEvents()[index].location,
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .copyWith(
                                          color: UIColors.color6,
                                        ),
                                  ),
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
            Material(
              color: UIColors.color3,
              borderRadius: BorderRadius.circular(15.0),
              child: InkWell(
                onTap: () {},
                splashColor: Theme.of(context).splashColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Tickets",
                      style: Theme.of(context).textTheme.headline.copyWith(
                            color: UIColors.color6,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
