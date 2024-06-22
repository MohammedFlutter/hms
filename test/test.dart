// // Import necessary libraries
// import 'package:flutter_test/flutter_test.dart';
// import 'package:medica/features/registration/data/model/tokens.dart';
// import 'package:medica/features/registration/data/provider/auth_provider.dart';
// import 'package:mockito/mockito.dart';
//
// // Mock the AuthProvider class
// class MockAuthProvider extends Mock implements AuthProvider {
//   // Mock the getAccessToken method
//   @override
//   Future<Tokens> getAccessToken(String refreshToken) => super.noSuchMethod(
//     Invocation.method(#getAccessToken, [refreshToken]),
//     returnValue: Future.value('access_token'), // Replace with expected string
//   );
// }
//
// void main() {
//   group('getAccessToken', () {
//     MockAuthProvider mockAuthProvider;
//     Tokens tokens;
//
//     setUp(() {
//       mockAuthProvider = MockAuthProvider();
//       tokens = Tokens(accessToken: 'access_token', refreshToken: 'refresh_roken'); // Replace with expected token data
//     });
//
//     test('returns tokens on successful response', () async {
//       // Stub the mockAuthProvider to return a successful response
//       when(mockAuthProvider.getAccessToken(any))
//           .thenAnswer((_) => Future.value('access_token'));
//
//       // Call the getAccessToken method with a mock refresh token
//       final result = await getAccessToken(refreshToken: 'mock_refresh_token', authProvider: mockAuthProvider);
//
//       // Verify that the expected token object is returned
//       expect(result, tokens);
//     });
//
//     test('throws NetworkException on error', () async {
//       // Stub the mockAuthProvider to throw an exception
//       when(mockAuthProvider.getAccessToken(any)).thenThrow(Exception());
//
//       // Call the getAccessToken method and expect an exception
//       expect(() => getAccessToken(refreshToken: 'mock_refresh_token', authProvider: mockAuthProvider), throwsA(isA<NetworkException>()));
//     });
//   });
// }
