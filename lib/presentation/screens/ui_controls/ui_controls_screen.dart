import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox, Radios y otros Tiles'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool breakfast = false;
  bool lunch = false;
  bool dinner = false;
  Transportation selectedTransportation = Transportation.car;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        _expansionTile(),
        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: breakfast,
          onChanged: (value) {
            setState(() {
              breakfast = !breakfast;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('¿Almuerzo?'),
          value: lunch,
          onChanged: (value) {
            setState(() {
              lunch = !lunch;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('¿Cena?'),
          value: dinner,
          onChanged: (value) {
            setState(() {
              dinner = !dinner;
            });
          },
        ),
      ],
    );
  }

  ExpansionTile _expansionTile() {
    return ExpansionTile(
      title: const Text('Vehiculo de transporte'),
      subtitle: Text('$selectedTransportation'),
      children: [
        RadioListTile(
          title: const Text('By car'),
          subtitle: const Text('Viajar por carro'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.car;
            });
          },
        ),
        RadioListTile(
          title: const Text('By plane'),
          subtitle: const Text('Viajar por plane'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.plane;
            });
          },
        ),
        RadioListTile(
          title: const Text('By boat'),
          subtitle: const Text('Viajar en bote'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.boat;
          }),
        ),
        RadioListTile(
          title: const Text('By Submarine'),
          subtitle: const Text('Viajar en submarino'),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.submarine;
          }),
        )
      ],
    );
  }
}
