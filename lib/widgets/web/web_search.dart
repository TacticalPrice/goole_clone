import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone_ui/screens/search_screen.dart';

import '../../colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/google-logo.png',
              width: size.width * 0.12,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width > 768 ? size.width * 0.4 : size.width * 0.9,
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: searchBorder),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/image/search-icon.svg',
                    color: searchBorder,
                    width: 1,
                    height: 1,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/image/mic-icon.svg',
                  ),
                ),
              ),
              onFieldSubmitted: (val) {
                if(val.trim() != ''){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen(searchQuery: val.trim(), start: '0'),),);
                
                }
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
