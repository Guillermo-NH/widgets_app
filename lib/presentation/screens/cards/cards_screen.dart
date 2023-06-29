import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
  {'elevation': 6.0, 'label': 'Elevation 6'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  static String name = 'cards_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card screen')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...cards.map((card) =>
                _CardType1(elevation: card['elevation'], label: card['label'])),
            const _Separator(),
            ...cards.map((card) =>
                _CardType2(elevation: card['elevation'], label: card['label'])),
            const _Separator(),
            ...cards.map((card) =>
                _CardType3(elevation: card['elevation'], label: card['label'])),
            const _Separator(),
            ...cards.map((card) =>
                _CardType4(elevation: card['elevation'], label: card['label'])),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class _Separator extends StatelessWidget {
  const _Separator();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      height: 50,
      child: Divider(
        color: colors.primary,
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final double elevation;
  final String label;
  const _CardType1({
    Key? key,
    required this.elevation,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(alignment: Alignment.bottomLeft, child: Text(label)),
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final double elevation;
  final String label;

  const _CardType2({
    Key? key,
    required this.elevation,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colors.outline),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), bottomRight: Radius.circular(20))),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(
              child: Text('$label - Outline'),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final double elevation;
  final String label;
  const _CardType3({
    Key? key,
    required this.elevation,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      surfaceTintColor: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.more_vert_outlined),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('$label - filled'),
              )
            ],
          )),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final double elevation;
  final String label;
  const _CardType4({
    Key? key,
    required this.elevation,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Image.network(
              'https://picsum.photos/id/23${elevation.toInt()}/2000/650',
              fit: BoxFit.cover,
              gaplessPlayback: true),
          Align(
            alignment: Alignment.topRight,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20))),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_outlined),
                  color: colors.primary,
                )),
          )
        ],
      ),
    );
  }
}
