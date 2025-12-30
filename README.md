# 🛒 Store App


## 📌 Overview


A modern cross-platform e-commerce application built with Flutter and Dart. The app fetches product data from an external REST API and presents a clean, responsive UI for browsing products, viewing details, and filtering by category.

## ✨ Features

- Product listing with images, titles, and prices
- Product details screen with full description
- REST API integration
- Product rating and review count
- Responsive UI for multiple screen sizes
- Clean, scalable architecture with null-safe data handling
- Cross-platform support (Android, iOS, Web, Desktop)

## Technologies

- Flutter
- Dart
- Material Design
- HTTP/REST API

### Example dependencies (pubspec.yaml)

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.0
  cupertino_icons: ^1.0.8
```

## Project Structure

```
lib/
├── main.dart
├── models/
│   └── product_model.dart
├── services/
│   └── api_service.dart
├── screens/
│   ├── home_screen.dart
│   └── product_details.dart
├── widgets/
│   ├── product_card.dart
│   └── rating_widget.dart
├── constants.dart
└── theme.dart
```

## Product Model (example)

```dart
class ProductModel {
  final String id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final Rating? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'].toString(),
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: json['rating'] != null
          ? Rating.fromJson(json['rating'])
          : Rating(rate: 0.0, count: 0),
    );
  }
}
```

## UI & Design

- Minimal and clean product cards
- High-quality product images
- Consistent spacing and typography
- Adaptive layout for different screen sizes

## Getting Started

### Prerequisites

- Flutter SDK (3.8.0+ recommended)
- Dart SDK (bundled with Flutter)
- Android Studio or VS Code with Flutter plugins

### Installation

```bash
git clone https://github.com/8Fouad8/Flutter-Store-App.git
cd Flutter-Store-App
flutter pub get
flutter run
```

### Build for production

- Android:

```bash
flutter build apk --release
```

- iOS:

```bash
flutter build ios --release
```

- Web:

```bash
flutter build web --release
```

## Known Issues & Future Enhancements

- Shopping cart functionality
- Favorites / wishlist
- Product search and filters
- Category-based browsing
- Authentication and checkout
- Payment integration
- Offline caching

## Screenshots

(Add screenshots to the `assets/` folder and reference them here.)

## Author

Fouad — https://github.com/8Fouad8

## Support

If you encounter issues or have suggestions, open an issue or submit a pull request.

## Resources

- https://flutter.dev/
- https://dart.dev/
- https://restfulapi.net/

---

Last updated: December 30, 2025