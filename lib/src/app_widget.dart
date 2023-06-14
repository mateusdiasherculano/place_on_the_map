import 'package:flutter/material.dart';
import 'package:place_on_the_map/providers/great_places.dart';
import 'package:place_on_the_map/src/features/pages/place_detail_page.dart';
import 'package:place_on_the_map/src/features/pages/place_form_pages.dart';
import 'package:place_on_the_map/src/features/pages/places_list_page.dart';
import 'package:provider/provider.dart';

import '../utils/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
            secondary: Colors.amber,
          ),
        ),
        home: const PlacesListPage(),
        routes: {
          AppRoutes.PLACE_FORM: (ctx) => const PlaceFormPages(),
          AppRoutes.PLACE_DETAIL: (ctx) => const PlaceDetailPage(),
        },
      ),
    );
  }
}
