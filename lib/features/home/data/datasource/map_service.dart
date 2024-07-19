import 'dart:convert';

import 'package:latlong2/latlong.dart';
import 'package:wix_navigation/core/utils/errors.dart';
import 'package:wix_navigation/core/utils/string_paths.dart';
import 'package:wix_navigation/features/home/domain/models/calculation_model.dart';
import 'package:http/http.dart' as http;
import 'package:wix_navigation/product/custom_toast.dart';

class MapService {
  Future<List<CalculationModel>?> getRouteDetails(String coordinates) async {
    if (coordinates.isEmpty) return null;
    final url = Uri.parse('$apiFirstPart$coordinates$apiSecondPart');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        List<dynamic> routes = jsonResponse[apiRoutesPath];
        List<CalculationModel> calculationsList = [];
        if (routes.isNotEmpty) {
          List<dynamic> legs = routes[0][apiLegsPath];
          for (int i = 0; i < legs.length; i++) {
            double distance = legs[i][apiDistancePath] / 1000;
            double duration = legs[i][apiDurationPath] / 60;
            calculationsList.add(CalculationModel(
                text: i == legs.length - 1 ? "Hedefiniz" : 'Durak ${i + 1}',
                distance: distance.toStringAsFixed(2),
                duration: duration.toStringAsFixed(1)));
          }
          return calculationsList;
        } else {
          showToast(routeNotFound);
        }
      } else {
        showToast(routeNotLoad);
      }
    } catch (e) {
      showToast(unknownError);
    }
    return null;
  }

  Future<List<LatLng>?> getRouteCoordinates(String coordinates) async {
    if (coordinates.isEmpty) return null;
    final url = Uri.parse('$apiFirstPart$coordinates$apiSecondPart');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        List<dynamic> routes = jsonResponse[apiRoutesPath];
        if (routes.isNotEmpty) {
          List<dynamic> coords = routes[0][apiGeometryPath][apiCoordinatesPath];
          List<LatLng> result =
              coords.map((coord) => LatLng(coord[1], coord[0])).toList();
          return result;
        } else {
          showToast(routeNotFound);
        }
      } else {
        showToast(routeNotLoad);
      }
    } catch (e) {
      showToast(unknownError);
    }
    return null;
  }
}
