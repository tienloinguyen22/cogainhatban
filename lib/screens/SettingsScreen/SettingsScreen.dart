import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F6),
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Color(0xff151624),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
        centerTitle: false,
        backgroundColor: Color(0xffF5F6F6),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search settings',
                  prefixIcon: Icon(Icons.search, color: Color(0xff151624)),
                  suffixIcon: Icon(Icons.close, color: Color(0xff151624)),
                  fillColor: Color(0xffECECEC),
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SvgPicture.asset("assets/images/dark-mode-icon.svg"),
                                SizedBox(width: 12),
                                Text(
                                  'Dark Mode',
                                  style: TextStyle(
                                    color: Color(0xff151624),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Switch(
                              value: false,
                              onChanged: (bool value) {},
                            ),
                          ],
                        )
                      )
                    ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SvgPicture.asset("assets/images/profile-lock-icon.svg"),
                              SizedBox(width: 12),
                              Text(
                                'Profile lock',
                                style: TextStyle(
                                  color: Color(0xff151624),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            value: true,
                            onChanged: (bool value) {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SvgPicture.asset("assets/images/chat-customize-icon.svg"),
                              SizedBox(width: 12),
                              Text(
                                'Chat Customize',
                                style: TextStyle(
                                  color: Color(0xff151624),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SvgPicture.asset("assets/images/notification-icon.svg"),
                              SizedBox(width: 12),
                              Text(
                                'Notifications',
                                style: TextStyle(
                                  color: Color(0xff151624),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SvgPicture.asset("assets/images/privacy-icon.svg"),
                              SizedBox(width: 12),
                              Text(
                                'Privacy',
                                style: TextStyle(
                                  color: Color(0xff151624),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SvgPicture.asset("assets/images/logout-icon.svg"),
                                SizedBox(width: 12),
                                Text(
                                  'Logout',
                                  style: TextStyle(
                                    color: Color(0xff151624),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      )
                    ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SvgPicture.asset("assets/images/delete-account-icon.svg"),
                              SizedBox(width: 12),
                              Text(
                                'Delete account',
                                style: TextStyle(
                                  color: Color(0xff151624),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
