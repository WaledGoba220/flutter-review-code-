import 'package:flutter/material.dart';

class SearchDelegateWidget extends StatefulWidget {
  const SearchDelegateWidget({Key? key}) : super(key: key);

  @override
  State<SearchDelegateWidget> createState() => _SearchDelegateWidgetState();
}

class _SearchDelegateWidgetState extends State<SearchDelegateWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        actions: [
          IconButton(onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          }, icon: const Icon(Icons.search)),
        ],
      ),
      body: const Center(
        child: Text("Waled"),
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text("Search Content");
  }
}
