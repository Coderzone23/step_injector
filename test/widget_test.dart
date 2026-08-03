import 'package:flutter_test/flutter_test.dart';
import 'package:step_injector/main.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    // Yahan humne purane 'MyApp' ki jagah naya 'StepInjectorApp' daal diya hai
    await tester.pumpWidget(const StepInjectorApp());
  });
}