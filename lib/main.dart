import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const StepInjectorApp());
}

class StepInjectorApp extends StatelessWidget {
  const StepInjectorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Step Injector',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _stepsController = TextEditingController();
  final Health health = Health();
  String _status = 'Ready to add steps!';

  Future<void> injectSteps() async {
    int stepsToAdd = int.tryParse(_stepsController.text) ?? 0;

    if (stepsToAdd <= 0) {
      setState(() => _status = 'Please valid steps daalo (e.g., 5000)');
      return;
    }

    setState(() => _status = 'Requesting permissions...');

    await Permission.activityRecognition.request();

    var types = [HealthDataType.STEPS];
    var permissions = [HealthDataAccess.WRITE];

    bool authorized = await health.requestAuthorization(
      types,
      permissions: permissions,
    );

    if (authorized) {
      DateTime endTime = DateTime.now();
      DateTime startTime = endTime.subtract(const Duration(hours: 1));

      setState(() => _status = 'Injecting $stepsToAdd steps...');

      try {
        // FIX: Yahan named parameters add kar diye gaye hain (value:, type:, etc.)
        bool success = await health.writeHealthData(
          value: stepsToAdd.toDouble(),
          type: HealthDataType.STEPS,
          startTime: startTime,
          endTime: endTime,
        );

        if (success) {
          setState(() => _status = 'Boom! $stepsToAdd steps added! 🎉');
          _stepsController.clear();
        } else {
          setState(() => _status = 'Failed to add steps 😢');
        }
      } catch (e) {
        setState(() => _status = 'Error aagaya: $e');
      }
    } else {
      setState(() => _status = 'Permission denied by user!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step Injector Hacker 🏃‍♂️'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _status,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            TextField(
              controller: _stepsController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Kitne steps add karne hain?',
                prefixIcon: Icon(Icons.directions_walk),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: injectSteps,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Inject Steps!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
