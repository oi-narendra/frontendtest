import 'package:flutter/material.dart';
import 'package:frontendtest/components/atoms/indicator_dot.dart';

/// carousel molecule
/// [Carousel] is the component to show carousel of images
/// [images] is the list of images to be shown
/// [onPressed] is the function to be called when the carousel is pressed
/// [onPageChanged] is the function to be called when the page is changed
/// [initialPage] is the initial page of the carousel
/// [height] is the height of the carousel
/// [width] is the width of the carousel
/// [borderRadius] is the border radius of the carousel
class Carousel extends StatefulWidget {
  /// carousel constructor
  const Carousel({
    required this.images,
    this.onPressed,
    this.onPageChanged,
    this.initialPage = 0,
    this.height = 450,
    this.width,
    this.borderRadius,
    this.showIndicator = true,
    this.indicatorPosition = CarouselIndicatorPosition.bottom,
    super.key,
  });

  /// list of images
  final List<String> images;

  /// on pressed function
  final void Function()? onPressed;

  /// on page changed function
  final void Function(int)? onPageChanged;

  /// initial page
  final int initialPage;

  /// height
  final double height;

  /// width
  final double? width;

  /// border radius
  final double? borderRadius;

  /// show indicator
  final bool showIndicator;

  /// indicator position
  final CarouselIndicatorPosition indicatorPosition;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  /// page controller
  late final PageController _pageController;

  /// current page
  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: widget.initialPage);
    _currentPage = widget.initialPage;
    super.initState();
  }

  /// dispose
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: widget.height,
          width: widget.width,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: widget.onPressed,
                child: Container(
                  height: widget.height,
                  width: widget.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 0),
                    image: DecorationImage(
                      image: NetworkImage(widget.images[index]),
                      fit: BoxFit.cover,
                    ),
                    color: const Color(0xFFECEEF2),
                  ),
                ),
              );
            },
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
              });

              widget.onPageChanged?.call(_currentPage);
            },
          ),
        ),
        if (widget.showIndicator)
          Positioned(
            top: widget.indicatorPosition == CarouselIndicatorPosition.top
                ? 16
                : null,
            bottom: widget.indicatorPosition == CarouselIndicatorPosition.top
                ? null
                : 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < widget.images.length; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: IndicatorDot(
                      color: _currentPage == i
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}

/// carousel indicator position
enum CarouselIndicatorPosition {
  /// top
  top,

  /// bottom
  bottom,
}
