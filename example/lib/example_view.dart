import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          BoxText.headingOne('Design System'),
          Divider(),
          ...buttonWidgets,
          ...textWidgets,
          ...inputFields,
        ],
      ),
    );
  }

  List<Widget> get textWidgets => [
        BoxText.headline('Text Styles'),
        BoxText.headingOne('Heading One'),
        BoxText.headingTwo('Heading Two'),
        BoxText.headingThree('Heading Three'),
        BoxText.headline('Headline'),
        BoxText.subheading('This will be a sub heading to the headling'),
        BoxText.body('Body Text that will be used for the general body'),
        BoxText.caption('This will be the caption usually for smaller details'),
      ];

  List<Widget> get buttonWidgets => [
        BoxText.headline('Buttons'),
        BoxText.body('Normal'),
        BoxButton(
          title: 'SIGN IN',
        ),
        BoxText.body('Disabled'),
        BoxButton(
          title: 'SIGN IN',
          disabled: true,
        ),
        BoxText.body('Busy'),
        BoxButton(
          title: 'SIGN IN',
          busy: true,
        ),
        BoxText.body('Outline'),
        BoxButton.outline(
          title: 'Select location',
          leading: Icon(
            Icons.send,
            color: kcPrimaryColor,
          ),
        ),
      ];

  List<Widget> get inputFields => [
        BoxText.headline('Input Field'),
        BoxText.body('Normal'),
        BoxInputField(
          controller: TextEditingController(),
          placeholder: 'Enter Password',
        ),
        BoxText.body('Leading Icon'),
        BoxInputField(
          controller: TextEditingController(),
          leading: Icon(Icons.reset_tv),
          placeholder: 'Enter TV Code',
        ),
        BoxText.body('Trailing Icon'),
        BoxInputField(
          controller: TextEditingController(),
          trailing: Icon(Icons.clear_outlined),
          placeholder: 'Search for things',
        ),
      ];
}
