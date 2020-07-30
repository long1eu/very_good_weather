// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/containers/is_getting_any_weather_data_container.dart';
import 'package:very_good_weather/src/containers/is_getting_weather_data_container.dart';
import 'package:very_good_weather/src/containers/is_searching_container.dart';
import 'package:very_good_weather/src/containers/query_container.dart';
import 'package:very_good_weather/src/containers/search_result_container.dart';
import 'package:very_good_weather/src/models/index.dart';
import 'package:very_good_weather/src/presentation/mixins/store_mixin.dart';
import 'package:very_good_weather/src/presentation/widgets/loading_indicator.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key, @required this.onSelected})
      : assert(onSelected != null),
        super(key: key);

  final ValueChanged<Location> onSelected;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with StoreMixin<SearchPage> {
  final TextEditingController controller = TextEditingController();
  final FocusNode node = FocusNode();

  @override
  void initState() {
    super.initState();
    controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {
      // this will change the prefix icon
    });
    if (controller.text.isNotEmpty) {
      dispatch(SearchLocation.query(controller.text));
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IsSearchingContainer(
          builder: (BuildContext context, bool isSearching) {
            return TextField(
              controller: controller,
              autofocus: true,
              textInputAction: TextInputAction.search,
              focusNode: node,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                hintText: 'location',
                border: InputBorder.none,
                suffixIcon: isSearching
                    ? const LoadingIndicator()
                    : IconButton(
                        icon: Icon(controller.text.isEmpty ? Icons.search : Icons.clear),
                        onPressed: () {
                          if (controller.text.isEmpty) {
                            FocusScope.of(context).requestFocus(node);
                          } else {
                            controller.clear();
                          }
                        },
                      ),
              ),
            );
          },
        ),
      ),
      body: SearchResultContainer(
        builder: (BuildContext context, List<Location> result) {
          if (result.isEmpty) {
            return QueryContainer(
              builder: (BuildContext context, String query) {
                query ??= 'that location';
                return Center(
                  child: Text('Nothing shows up for $query.'),
                );
              },
            );
          }

          return IsGettingAnyWeatherDataContainer(
            builder: (BuildContext context, bool isGettingData) {
              return ListView.builder(
                itemCount: result.length,
                itemBuilder: (BuildContext context, int index) {
                  final Location location = result[index];

                  return IsGettingWeatherDataContainer(
                    locationId: location.id,
                    builder: (BuildContext context, bool isLoading) {
                      return ListTile(
                        title: Text(location.title),
                        subtitle: Text(location.locationType),
                        onTap: isGettingData ? null : () => widget.onSelected(location),
                        trailing: isLoading ? const LoadingIndicator() : null,
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
