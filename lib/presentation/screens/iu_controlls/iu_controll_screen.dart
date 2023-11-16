import 'package:flutter/material.dart';

class UiScreen extends StatelessWidget {
  static const name = 'iuScroll_screen';
  const UiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI-Controlls'),
      ),
      body: const _UiScreenView(),
    );
  }
}

class _UiScreenView extends StatefulWidget {
  const _UiScreenView();

  @override
  State<_UiScreenView> createState() => _UiScreenViewState();
}

enum Transportations { car, plane, boat, submarine }

class _UiScreenViewState extends State<_UiScreenView> {
  bool isDevelop = true;
  Transportations selectedEnum = Transportations.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  void buttonPressed() {
    setState(() {
      isDevelop = !isDevelop;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: const Text('developer Mode'),
          subtitle: const Text('Controls Adicionales'),
          value: isDevelop,
          onChanged: (value) => buttonPressed(),
        ),
        ExpansionTile(
          title: const Text('Vehiculo transporte'),
          subtitle: Text('viaja en : $selectedEnum'),
          children: [
            RadioListTile(
              title: const Text('by card'),
              subtitle: const Text('Viaje en carro'),
              value: Transportations.car,
              groupValue: selectedEnum,
              onChanged: (value) => setState(() {
                selectedEnum = Transportations.car;
              }),
            ),
            RadioListTile(
              title: const Text('by boat'),
              subtitle: const Text('Viaje en barco'),
              value: Transportations.boat,
              groupValue: selectedEnum,
              onChanged: (value) => setState(() {
                selectedEnum = Transportations.boat;
              }),
            ),
            RadioListTile(
              title: const Text('by plane'),
              subtitle: const Text('Viaje en avión'),
              value: Transportations.plane,
              groupValue: selectedEnum,
              onChanged: (value) => setState(() {
                selectedEnum = Transportations.plane;
              }),
            ),
            RadioListTile(
              title: const Text('by submarine'),
              subtitle: const Text('Viaje en submarino'),
              value: Transportations.submarine,
              groupValue: selectedEnum,
              onChanged: (value) => setState(() {
                selectedEnum = Transportations.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          value: wantsBreakFast,
          title: const Text('¿Desayuno?'),
          onChanged: (value) => setState(() {
            wantsBreakFast = !wantsBreakFast;
          }),
        ),
        CheckboxListTile(
          value: wantsLunch,
          title: const Text('Almuerzo?'),
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          value: wantsDinner,
          title: const Text('Cena?'),
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
