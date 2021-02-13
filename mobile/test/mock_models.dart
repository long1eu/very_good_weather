import 'package:mockito/mockito.dart';
import 'package:http/http.dart';
import 'package:very_good_weather/src/data/index.dart';

class MockClient extends Mock implements Client {}

class MockResponse extends Mock implements Response {}

class MockLocationApi extends Mock implements LocationApi {}


