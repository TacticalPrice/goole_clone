import 'package:flutter/material.dart';
import 'package:google_clone_ui/widgets/search_tab.dart';

class SaerchTabs extends StatelessWidget {
  const SaerchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(isActive: true, text: 'All', icon: Icons.search,),
          SizedBox(width: 20,),
          SearchTab(text:  'All' , icon: Icons.image, isActive: null,),
          SizedBox(width: 20,),
          SearchTab(
            
            text: 'Maps',
            icon: Icons.map, isActive: null,
          ),
          SizedBox(width: 20,),
          SearchTab(
            
            text: 'News',
            icon: Icons.article, isActive: null,
          ),
          SizedBox(width: 20,),
          SearchTab(
            
            text: 'Shopping',
            icon: Icons.shop, isActive: null,
          ),
          SizedBox(width: 20,),
          SearchTab(
            
            text: 'More',
            icon: Icons.more_vert, isActive: null,
          ),
        ],
      ),
      
    );
  }
}