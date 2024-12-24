import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/room_booking_screen.dart';
import 'package:flutter_application_1/screens/contact_screen.dart';

void main() {
  group('Widget Tests for Hotel Hermes Palace App', () {
    testWidgets('HomeScreen loads correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: HomeScreen()));

      // Verifikasi teks dan tombol
      expect(find.text('Hotel Hermes Palace'), findsOneWidget);
      expect(find.text('Pesan Kamar'), findsOneWidget); // Sesuaikan teks
      expect(find.text('Hubungi Kami'), findsOneWidget); // Sesuaikan teks

      // Verifikasi gambar
      expect(find.byType(Image), findsWidgets);
    });

    testWidgets('RoomBookingScreen displays room types', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: RoomBookingScreen()));

      // Verifikasi teks tipe kamar
      expect(find.text('Deluxe Room'), findsOneWidget);
      expect(find.text('Superior Room'), findsOneWidget);
    });

    testWidgets('ContactScreen loads correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: ContactScreen()));

      // Verifikasi teks kontak
      expect(find.text('Hubungi Kami'), findsOneWidget);
      expect(find.text('Email: info@hermespalace.com'), findsOneWidget);
      expect(find.text('Phone: +62 651 654321'), findsOneWidget);
    });
  });
}
