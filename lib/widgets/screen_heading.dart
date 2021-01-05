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
  String enteredValue;
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    var accList = Provider.of<AccNoList>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                      content: TextFormField(
                        key: ValueKey('AccNumber'),
                        validator: (value) {
                          if (value.isEmpty || value.length < 10) {
                            return 'Please Enter atleast 10 numbers.';
                          } else {
                            enteredValue = value;
                            return null;
                          }
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Account Number',
                        ),
                      ),
                      actions: [
                        FlatButton(
                          child: Text('Add'),
                          onPressed: () => {accList.addAccNo = enteredValue},
                        ),
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
          pressed
              ? Row(
                  children: [
                    Text(
                      'you are here...',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
