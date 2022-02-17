import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  final List<int> imagesIds = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        getFetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final sizeMedia = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('ListViewBuilder Screen'),
      // ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (context, index) {
                  return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      placeholder:
                          const AssetImage('assets/loading/placeholder.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image=${imagesIds[index]}'));
                },
              ),
            ),
            if (isLoading)
              Positioned(
                  bottom: 20,
                  left: sizeMedia.width * 0.5 - 30,
                  child: const LoadingImages())
          ],
        ),
      ),
    );
  }

  Future getFetchData() async {
    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        getMoreImages();
        isLoading = false;

        if (scrollController.position.pixels + 100 >=
            scrollController.position.maxScrollExtent) {
          scrollController.animateTo(
            scrollController.position.pixels + 120,
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
          );
        }
      });
    });
  }

  void getMoreImages() {
    final int lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        imagesIds.clear();
        imagesIds.add(10);
        getMoreImages();
      });
    });
  }
}

class LoadingImages extends StatelessWidget {
  const LoadingImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: CircularProgressIndicator(color: AppTheme.primary),
      ),
    );
  }
}
