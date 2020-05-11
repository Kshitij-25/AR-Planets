import 'dart:async';

import 'package:flutter/material.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter AR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter AR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ARKitController arCoreController;
  Timer timer;

  _onArCoreViewCreated(ARKitController _arcoreController) {
    arCoreController = _arcoreController;
    _addSun(arCoreController);
    _addMercury(arCoreController);
    _addVenus(arCoreController);
    _addEarth(arCoreController);
    _addMars(arCoreController);
    _addJupiter(arCoreController);
    _addSaturn(arCoreController);
    _addUranus(arCoreController);
    _addNeptune(arCoreController);
  }

  _addSun(ARKitController controller) {
    final material = ARKitMaterial(
      lightingModelName: ARKitLightingModel.lambert,
      diffuse: ARKitMaterialProperty(image: 'assets/8k_sun.jpg'),
    );
    final sphere = ARKitSphere(materials: [material], radius: 1);
    final node = ARKitNode(
      geometry: sphere,
      eulerAngles: vector.Vector3.zero(),
      position: vector.Vector3(-2, -3, -5),
    );
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        final old = node.eulerAngles.value;
        final rotation = vector.Vector3(old.x, old.y + 0.05, old.z);
        node.eulerAngles.value = rotation;
      },
    );

    controller.add(node);
  }

  _addMercury(ARKitController controller) {
    final material = ARKitMaterial(
      lightingModelName: ARKitLightingModel.lambert,
      diffuse: ARKitMaterialProperty(image: 'assets/2k_mercury.jpg'),
    );
    final sphere = ARKitSphere(materials: [material], radius: 0.4);
    final node = ARKitNode(
      geometry: sphere,
      eulerAngles: vector.Vector3.zero(),
      position: vector.Vector3(0, -3, -4),
    );
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        final old = node.eulerAngles.value;
        final rotation = vector.Vector3(old.x, old.y + 0.05, old.z);
        node.eulerAngles.value = rotation;
      },
    );

    controller.add(node);
  }

  _addVenus(ARKitController controller) {
    final material = ARKitMaterial(
      lightingModelName: ARKitLightingModel.lambert,
      diffuse: ARKitMaterialProperty(image: 'assets/2k_venus_surface.jpg'),
    );
    final sphere = ARKitSphere(materials: [material], radius: 0.4);
    final node = ARKitNode(
      geometry: sphere,
      eulerAngles: vector.Vector3.zero(),
      position: vector.Vector3(1, -3, -4),
    );
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        final old = node.eulerAngles.value;
        final rotation = vector.Vector3(old.x, old.y + 0.05, old.z);
        node.eulerAngles.value = rotation;
      },
    );

    controller.add(node);
  }

  _addEarth(ARKitController controller) {
    final material = ARKitMaterial(
      lightingModelName: ARKitLightingModel.lambert,
      diffuse: ARKitMaterialProperty(image: 'assets/earth.jpg'),
    );
    final sphere = ARKitSphere(materials: [material], radius: 0.4);
    final node = ARKitNode(
      geometry: sphere,
      eulerAngles: vector.Vector3.zero(),
      position: vector.Vector3(2, -3, -4),
    );
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        final old = node.eulerAngles.value;
        final rotation = vector.Vector3(old.x, old.y + 0.05, old.z);
        node.eulerAngles.value = rotation;
      },
    );

    controller.add(node);
  }

  _addMars(ARKitController controller) {
    final material = ARKitMaterial(
      lightingModelName: ARKitLightingModel.lambert,
      diffuse: ARKitMaterialProperty(image: 'assets/2k_mars.jpg'),
    );
    final sphere = ARKitSphere(materials: [material], radius: 0.4);
    final node = ARKitNode(
      geometry: sphere,
      eulerAngles: vector.Vector3.zero(),
      position: vector.Vector3(3, -3, -4),
    );
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        final old = node.eulerAngles.value;
        final rotation = vector.Vector3(old.x, old.y + 0.05, old.z);
        node.eulerAngles.value = rotation;
      },
    );

    controller.add(node);
  }

  _addJupiter(ARKitController controller) {
    final material = ARKitMaterial(
      lightingModelName: ARKitLightingModel.lambert,
      diffuse: ARKitMaterialProperty(image: 'assets/2k_jupiter.jpg'),
    );
    final sphere = ARKitSphere(materials: [material], radius: 0.8);
    final node = ARKitNode(
      geometry: sphere,
      eulerAngles: vector.Vector3.zero(),
      position: vector.Vector3(4.5, -3, -4),
    );
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        final old = node.eulerAngles.value;
        final rotation = vector.Vector3(old.x, old.y + 0.05, old.z);
        node.eulerAngles.value = rotation;
      },
    );

    controller.add(node);
  }

  _addSaturn(ARKitController controller) {
    final material = ARKitMaterial(
      lightingModelName: ARKitLightingModel.lambert,
      diffuse: ARKitMaterialProperty(image: 'assets/2k_saturn.jpg'),
    );
    final sphere = ARKitSphere(materials: [material], radius: 0.6);
    final node = ARKitNode(
      geometry: sphere,
      eulerAngles: vector.Vector3.zero(),
      position: vector.Vector3(6, -3, -4),
    );
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        final old = node.eulerAngles.value;
        final rotation = vector.Vector3(old.x, old.y + 0.05, old.z);
        node.eulerAngles.value = rotation;
      },
    );

    controller.add(node);
  }

  _addUranus(ARKitController controller) {
    final material = ARKitMaterial(
      lightingModelName: ARKitLightingModel.lambert,
      diffuse: ARKitMaterialProperty(image: 'assets/2k_uranus.jpg'),
    );
    final sphere = ARKitSphere(materials: [material], radius: 0.6);
    final node = ARKitNode(
      geometry: sphere,
      eulerAngles: vector.Vector3.zero(),
      position: vector.Vector3(7.5, -3, -4),
    );
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        final old = node.eulerAngles.value;
        final rotation = vector.Vector3(old.x, old.y + 0.05, old.z);
        node.eulerAngles.value = rotation;
      },
    );

    controller.add(node);
  }

  _addNeptune(ARKitController controller) {
    final material = ARKitMaterial(
      lightingModelName: ARKitLightingModel.lambert,
      diffuse: ARKitMaterialProperty(image: 'assets/2k_neptune.jpg'),
    );
    final sphere = ARKitSphere(materials: [material], radius: 0.6);
    final node = ARKitNode(
      geometry: sphere,
      eulerAngles: vector.Vector3.zero(),
      position: vector.Vector3(8.5, -3, -4),
    );
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        final old = node.eulerAngles.value;
        final rotation = vector.Vector3(old.x, old.y + 0.05, old.z);
        node.eulerAngles.value = rotation;
      },
    );

    controller.add(node);
  }

  @override
  void dispose() {
    timer.cancel();
    arCoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ARKitSceneView(
        onARKitViewCreated: _onArCoreViewCreated,
        showStatistics: true,
      ),
    );
  }
}
