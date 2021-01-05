import 'package:flutter/material.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/providers/accountno_provider.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:provider/provider.dart';

class ScreenHeading extends StatefulWidget {
  @override
  ScreenHeadingState createState() {
    return new ScreenHeadingState();
  }
}

class ScreenHeadingState extends State<ScreenHeading> {
  bool pressed = false;
  //function to show list of AccNo
  Widget getTextWidgets(List<dynamic> strings) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < strings.length; i++) {
      list.add(new Text(
        strings[i],
        style: Theme.of(context)
            .textTheme
            .subtitle2
            .copyWith(color: AppColors.COLOR_BLUE),
      ));
    }
    return new Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: list);
  }

  @override
  Widget build(BuildContext context) {
    var accList = Provider.of<AccNoList>(context, listen: false);
    final _formKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                Strings.SCREEN_NAME,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    Strings.PREPAID_NO,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  IconButton(
                    icon: pressed
                        ? Icon(Icons.keyboard_arrow_up)
                        : Icon(Icons.keyboard_arrow_down),
                    color: AppColors.COLOR_BLACK,
                    onPressed: () {
                      setState(() {
                        pressed = !pressed;
                      });
                    },
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  showDialog<bool>(
                    context: context,
                    builder: (c) => AlertDialog(
                      title: Text('Enter your Account Number'),
                      content: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              key: ValueKey('AccNumber'),
                              validator: (value) {
                                if (value.isEmpty || value.length < 10) {
                                  return 'Please Enter atleast 10 numbers.';
                                } else {
                                  accList.addAccNo = value;
                                  Scaffold.of(context).showSnackBar(SnackBar(
                                      content: Text("Welcome"),
                                      action: SnackBarAction(
                                        label: 'Ok',
                                        onPressed: () {},
                                      )));
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                labelText: 'Account Number',
                              ),
                            ),
                            RaisedButton(
                              onPressed: () {
                                _formKey.currentState.validate();
                              },
                              child: Text('Add'),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        FlatButton(
                          child: Text('Close'),
                          onPressed: () => {Navigator.pop(c, false)},
                        ),
                      ],
                    ),
                  );
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
          pressed ? getTextWidgets(accList.list) : SizedBox(),
        ],
      ),
    );
  }
}
