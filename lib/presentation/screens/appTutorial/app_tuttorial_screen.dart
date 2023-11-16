import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SliderInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SliderInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final slider = <SliderInfo>[
  SliderInfo(
    title: 'Buscar Ayuda',
    caption:
        'Aliqua ut amet est voluptate.Minim sint irure fugiat aute.Aliqua ut amet est voluptate.Minim sint irure fugiat aute.Aliqua ut amet est voluptate.Minim sint irure fugiat aute.',
    imageUrl: 'assets/img/1.png',
  ),
  SliderInfo(
    title: 'Buscar Solución',
    caption:
        'Aliqua ut amet est voluptate.Minim sint irure fugiat aute.Aliqua ut amet est voluptate.Minim sint irure fugiat aute.Aliqua ut amet est voluptate.Minim sint irure fugiat aute.',
    imageUrl: 'assets/img/2.png',
  ),
  SliderInfo(
    title: 'Buscar Reparación',
    caption:
        'Aliqua ut amet est voluptate.Minim sint irure fugiat aute.Aliqua ut amet est voluptate.Minim sint irure fugiat aute.Aliqua ut amet est voluptate.Minim sint irure fugiat aute.',
    imageUrl: 'assets/img/3.png',
  ),
];

class AppTuttorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTuttorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _CustomTutorialView(),
    );
  }
}

class _CustomTutorialView extends StatefulWidget {
  const _CustomTutorialView();

  @override
  State<_CustomTutorialView> createState() => _CustomTutorialViewState();
}

class _CustomTutorialViewState extends State<_CustomTutorialView> {
  final pageController = PageController();

  bool endReachView = false;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      final page = pageController.page ?? 0;

      if (!endReachView && page >= (slider.length - 1.5)) {
        setState(() {
          endReachView = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: pageController,
          physics: const BouncingScrollPhysics(),
          children: slider
              .map(
                (sliderData) => _Slider1(
                  title: sliderData.title,
                  caption: sliderData.caption,
                  imageUrl: sliderData.imageUrl,
                ),
              )
              .toList(),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
            onPressed: () => context.pop(),
            child: const Text('Salir'),
          ),
        ),
        endReachView
            ? Positioned(
                bottom: 30,
                right: 39,
                child: FadeInRight(
                  from: 20,
                  delay: const Duration(milliseconds: 500),
                  child: FilledButton.tonal(
                    onPressed: () => context.pop(),
                    child: const Text('Continuar'),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}

class _Slider1 extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slider1({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.titleLarge;
    final captionTheme = Theme.of(context).textTheme.labelSmall;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl),
            ),
            Text(
              title,
              style: titleTheme,
            ),
            Text(
              caption,
              style: captionTheme,
            ),
          ],
        ),
      ),
    );
  }
}
