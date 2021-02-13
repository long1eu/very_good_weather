import 'dart:convert';
import 'dart:io';

import 'package:mockito/mockito.dart';
import 'package:very_good_weather/src/data/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:very_good_weather/src/models/index.dart';
import '../mock_models.dart';

void main() {
  final Client client = MockClient();
  final Response response = MockResponse();
  final String data = File('test/res/lat_lng.json').readAsStringSync();
  final dynamic body = jsonDecode(data);
  final LocationApi api = LocationApi(client: client);
  final LatLng latLng = LatLng.fromJson(body);

  test('getLocation', () async {
    when(client.get(captureAny)).thenAnswer((_) async => response);
    when(response.body).thenReturn(data);

    final LatLng result = await api.getLocation();
    expect(result, latLng);

    final VerificationResult verifyResult = verify(client.get(captureAny));
    expect(verifyResult.callCount, 1);
    expect(verifyResult.captured[0], 'http://ip-api.com/json?fields=16592');
  });
}
