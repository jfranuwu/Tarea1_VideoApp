import 'package:flutter/material.dart';
import 'package:app/pages/selected_option_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: kToolbarHeight +  50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: screenWidth *  0.7,
              child: Image.asset(
                'images/barra.png',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: screenWidth *  0.1,
              margin: const EdgeInsets.only(left:  8.0),
              child: PopupMenuButton<String>(
                onSelected: (String result) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectedOptionPage(selectedOption: result),
                    ),
                  );
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'acercaDe',
                    child: Text('Acerca de'),
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
