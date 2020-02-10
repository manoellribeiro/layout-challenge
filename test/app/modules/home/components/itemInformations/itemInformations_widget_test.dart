import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:first_desafio/app/modules/home/components/itemInformations/itemInformations_widget.dart';

main() {
  testWidgets('ItemInformationsWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ItemInformationsWidget()));
    final textFinder = find.text('ItemInformations');
    expect(textFinder, findsOneWidget);
  });
}
