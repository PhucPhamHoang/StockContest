import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:untitled/presentation/components/AppImage.dart';

class AppCarousel extends StatefulWidget {
  final List<CarouselItem> carouselItems;
  final double viewportFraction;
  final double heightFraction;
  final double? aspectRatio;
  final Duration? durationPlay;
  final bool? autoPlay;
  final bool? infiniteScroll;
  final double? enlargeFactor;
  final BoxFit? fit;
  final double? borderRadius;
  const AppCarousel({
    Key? key,
    required this.carouselItems,
    this.viewportFraction = 0.8,
    this.heightFraction = 1.0,
    this.aspectRatio,
    this.durationPlay,
    this.autoPlay,
    this.infiniteScroll,
    this.enlargeFactor,
    this.fit,
    this.borderRadius,
  }) : super(key: key);

  @override
  State<AppCarousel> createState() => _AppCarouselState();
}

class _AppCarouselState extends State<AppCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0),
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: widget.viewportFraction,
          // height:
          //     // ((MediaQuery.of(context).size.width - 32) * 0.8 / 320 * 101),
          //     ((MediaQuery.of(context).size.width - 16) *
          //         widget.heightFraction /
          //         1070 *
          //         760),
          enlargeFactor: widget.enlargeFactor ?? 0.3,
          autoPlay: widget.autoPlay ?? false,
          clipBehavior: Clip.none,
          enableInfiniteScroll: widget.infiniteScroll ?? false,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          autoPlayInterval: widget.durationPlay ?? const Duration(seconds: 5),
          aspectRatio: widget.aspectRatio ?? 16 / 9,
        ),
        items: widget.carouselItems.map((item) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(widget.borderRadius ?? 0)),
                child: InkWell(
                    onTap: item.onPress,
                    child: item.child is String
                        ? AppImage(
                      fit: widget.fit,
                      path: item.child,
                    )
                        : item.child),
              );
            },
          );
        }).toList(),
      ),
    );
    ;
  }
}

class CarouselItem {
  dynamic child;
  void Function()? onPress;
  CarouselItem({
    required this.child,
    required this.onPress,
  }) : assert(child is String || child is Widget,
  'image is String or image is Widget');
}
