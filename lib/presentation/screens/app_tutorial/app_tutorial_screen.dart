import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:widgets_app/config/models/app_tutorial_model.dart';

final slides = <SlideInfoModel>[
  const SlideInfoModel(
      title: 'Busca la comida',
      caption:
          'Amet adipisicing elit et nostrud. Exercitation laboris duis eu non. Cillum occaecat cillum consequat quis aute veniam reprehenderit qui exercitation. Fugiat anim mollit qui sit.',
      imageUrl: 'assets/image/1.png'),
  const SlideInfoModel(
      title: 'Entrega rapida',
      caption:
          'Consectetur officia elit nisi anim nulla sunt commodo non duis cillum. Ad id dolor fugiat veniam adipisicing elit aute. Sunt dolor deserunt id nisi tempor ad enim. Sint ut cillum dolor commodo elit amet. Fugiat qui cillum ea mollit cupidatat amet ut dolore duis qui nulla dolor ut.',
      imageUrl: 'assets/image/2.png'),
  const SlideInfoModel(
      title: 'Disfruta la comida',
      caption:
          'Deserunt veniam fugiat irure qui id incididunt ullamco amet ut magna velit ipsum. Aliqua proident qui aliqua eiusmod reprehenderit laboris. Qui irure officia elit ea culpa eu excepteur veniam. Anim duis do dolor velit eiusmod dolor elit mollit excepteur dolore. Ea tempor duis fugiat nulla voluptate amet eu eu eiusmod sit proident laboris sint.',
      imageUrl: 'assets/image/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slidesData) => _Slide(
                    title: slidesData.title,
                    caption: slidesData.caption,
                    imageUrl: slidesData.imageUrl))
                .toList()),
        Positioned(
            top: 30,
            right: 20,
            child: TextButton(
                onPressed: () => context.pop(), child: const Text('Salir')))
      ],
    ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide({
    Key? key,
    required this.title,
    required this.caption,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageUrl)),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            caption,
            style: captionStyle,
          ),
        ],
      )),
    );
  }
}
