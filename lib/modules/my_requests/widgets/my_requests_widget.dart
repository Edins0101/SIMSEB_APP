import 'package:flutter/material.dart';
import 'package:fluttertest/modules/my_requests/widgets/search_widget.dart';
import 'package:fluttertest/shared/widgets/card.dart';

class MyRequestsWidget extends StatefulWidget {
  const MyRequestsWidget({
    super.key,
    required this.globalKey,
  });
  final GlobalKey globalKey;
  @override
  State<MyRequestsWidget> createState() => _MyRequestsWidgetState();
}

class _MyRequestsWidgetState extends State<MyRequestsWidget> {
  final List<Map<String, dynamic>> _allRequests = List.generate(
    5,
    (index) => {
      'numberRequest': 'Project name ${index + 1}',
      'detail':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'type': 'Desaseo',
      'status': 'Approved'
    },
  );
  List<Map<String, dynamic>> _filteredRequests = [];
  @override
  void initState() {
    super.initState();
    _filteredRequests = List.from(_allRequests);
  }

  void _filterRequests(String query) {
    setState(() {
      _filteredRequests = _allRequests.where((req) {
        return req.values.any((value) =>
            value.toString().toLowerCase().contains(query.toLowerCase()));
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
            child: SearchWidget(
              onFilter: _filterRequests,
            ),
          ),
          SizedBox(
              height: size.height,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                clipBehavior: Clip.hardEdge,
                itemCount: _filteredRequests.length,
                itemBuilder: (context, index) {
                  final request = _filteredRequests[index];
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: CardWidget(
                      numberRequest: request['numberRequest'],
                      detail: request['detail'],
                      type: request['type'],
                      status: request['status'],
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
