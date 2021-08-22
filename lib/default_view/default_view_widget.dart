import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultViewWidget extends StatefulWidget {
  DefaultViewWidget({Key key}) : super(key: key);

  @override
  _DefaultViewWidgetState createState() => _DefaultViewWidgetState();
}

class _DefaultViewWidgetState extends State<DefaultViewWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 108,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 44, 0, 0),
                  child: StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(
                      queryBuilder: (usersRecord) => usersRecord
                          .where('FullName', isEqualTo: currentUserDisplayName),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 15,
                            height: 15,
                            child: CircularProgressIndicator(
                              color: Color(0xFF9F68E4),
                            ),
                          ),
                        );
                      }
                      List<UsersRecord> columnUsersRecordList = snapshot.data;
                      // Customize what your widget looks like with no query results.
                      if (snapshot.data.isEmpty) {
                        return Container(
                          height: 100,
                          child: Center(
                            child: Text('No results.'),
                          ),
                        );
                      }
                      final columnUsersRecord = columnUsersRecordList.first;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Hello',
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Lato',
                                  color: Color(0xFF090F13),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Text(
                                  columnUsersRecord.fullName,
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF8E55DE),
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child: Text(
                                  'Browse home listings below...',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF9F68E4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: 27,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0,
                              color: Color(0x4E000000),
                              offset: Offset(0, 0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Color(0xFFC3C0C0),
                            width: 0.5,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                                child: Icon(
                                  Icons.search_rounded,
                                  color: Color(0xFF8D9099),
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment(0.95, 0),
                                  child: Icon(
                                    Icons.tune_rounded,
                                    color: Color(0xFFB3B7C2),
                                    size: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child: StreamBuilder<List<HousePostsRecord>>(
                    stream: queryHousePostsRecord(
                      queryBuilder: (housePostsRecord) => housePostsRecord
                          .orderBy('created_at', descending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 15,
                            height: 15,
                            child: CircularProgressIndicator(
                              color: Color(0xFF9F68E4),
                            ),
                          ),
                        );
                      }
                      List<HousePostsRecord> listViewHousePostsRecordList =
                          snapshot.data;
                      // Customize what your widget looks like with no query results.
                      if (snapshot.data.isEmpty) {
                        return Container(
                          height: 100,
                          child: Center(
                            child: Text('No results.'),
                          ),
                        );
                      }
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewHousePostsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewHousePostsRecord =
                              listViewHousePostsRecordList[listViewIndex];
                          return Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: StreamBuilder<UsersRecord>(
                              stream: UsersRecord.getDocument(
                                  listViewHousePostsRecord.user),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 15,
                                      height: 15,
                                      child: CircularProgressIndicator(
                                        color: Color(0xFF9F68E4),
                                      ),
                                    ),
                                  );
                                }
                                final cardUsersRecord = snapshot.data;
                                return Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 1,
                                  child: Container(
                                    width: 100,
                                    height: 290,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Image.network(
                                              listViewHousePostsRecord
                                                  .housePost,
                                              width: double.infinity,
                                              height: 210,
                                              fit: BoxFit.cover,
                                            ),
                                            Align(
                                              alignment: Alignment(0, 0),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    310, 0, 0, 0),
                                                child: IconButton(
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Color(0xFF8E55DE),
                                                    size: 25,
                                                  ),
                                                  iconSize: 25,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            10, 10, 0, 0),
                                                    child: Text(
                                                      'Posted By:',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            Color(0xFF8E55DE),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment(0, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              4, 10, 0, 0),
                                                      child: Text(
                                                        cardUsersRecord
                                                            .fullName,
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Lato',
                                                          color:
                                                              Color(0xFF333333),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
