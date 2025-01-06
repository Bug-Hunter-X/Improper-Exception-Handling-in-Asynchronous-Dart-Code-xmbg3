```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Specific error handling
      throw HttpException('HTTP error: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // Handle network errors specifically
    print('Network error: $e');
  } on FormatException catch (e) {
    // Handle JSON parsing errors
    print('JSON parsing error: $e');
  } on HttpException catch (e) {
    // Handle HTTP errors
    print('HTTP error: $e');
  } catch (e) {
    // Handle other unexpected errors
    print('Unexpected error: $e');
  }
}
```