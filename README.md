# Orders Challenge

This project is a Flutter-based application that showcases how to manage, process, and display orders using various features, including metrics like total orders, average price, and status-based counts. The application implements a clean, maintainable, and robust architecture using best practices such as SOLID principles, Clean Architecture, and dependency injection.

## Table of Contents

1. [Project Overview](#project-overview)
2. [Architecture & Design Principles](#architecture--design-principles)
3. [Features](#features)
4. [How to Run the Project](#how-to-run-the-project)
5. [Technologies Used](#technologies-used)
6. [Contributing](#contributing)
7. [License](#license)

## Project Overview

The **Orders Dashboard** app provides functionality to manage and visualize orders, including the ability to display charts, calculate total orders, average price, and filter orders based on their status (e.g., "Returned").

The app follows the Clean Architecture pattern, ensuring that different components of the application are independent and testable. It uses **Bloc** for state management and **Injectable** for dependency injection to ensure flexibility and scalability.

## Architecture & Design Principles

### Clean Architecture

The project is structured based on **Clean Architecture**, ensuring separation of concerns between different layers:

- **Presentation Layer**: Manages the user interface (UI), including `Widgets`, `Pages`, and `Bloc` for state management.
- **Domain Layer**: Contains the core business logic, such as `UseCases`, which are responsible for executing different actions like fetching orders, calculating metrics, etc.
- **Data Layer**: Deals with the data sources, including the repository pattern for accessing local and remote data, such as reading from JSON files or interacting with APIs.

### SOLID Principles

- **Single Responsibility Principle**: Each class has one responsibility. For example, `OrderProcessor` handles only the logic related to processing orders, while `GetOrdersUseCase` handles fetching the orders.
- **Open/Closed Principle**: The app's design allows for extension without modifying existing code. New features (such as new order metrics) can be added easily by adding new classes and extending the functionality of existing components.
- **Liskov Substitution Principle**: Subtypes can be used interchangeably with their base types, as seen with `OrderFeature` implementations like `TotalOrdersFeature`, `AveragePriceFeature`, etc.
- **Interface Segregation Principle**: The `OrderFeature` interface is designed so that different features (metrics) are implemented in separate classes, ensuring that clients aren't forced to depend on interfaces they don't need.
- **Dependency Inversion Principle**: Dependencies are injected using the `Injectable` library, ensuring that high-level modules (like `OrdersChartBloc`) do not depend on low-level modules (like concrete implementations of order features).

### Dependency Injection with Injectable

The app uses **Injectable** to handle dependency injection. This ensures that all dependencies are managed centrally and can be easily replaced with mocks during testing.

Example of how dependencies are injected in the app:

`dart
@module
abstract class AppModule {
  @injectable
  OrderProcessor get orderProcessor;
  @injectable
  GetOrdersUseCase get getOrdersUseCase;
  // More dependencies...
}`
`
class OrdersChartBloc extends Bloc<OrdersChartEvent, OrdersChartState> {
  // BLoC implementation
}
`
Use Cases
Use Cases handle specific actions related to the domain logic, such as fetching orders, calculating metrics, or processing orders based on status.

For example:

GetOrdersUseCase: Fetches orders from a data source.
GetTotalCountUseCase: Computes the total number of orders.
Custom Features Implementation
The application implements various features related to order metrics, including:

Total Orders Feature: A feature that calculates and returns the total number of orders.
Average Price Feature: A feature that calculates the average price of all orders.
Order Processor: A class responsible for processing orders using the appropriate feature.
Features
Orders Overview: Displays total orders, average price, and returned orders count.
Order Metrics: View detailed metrics and charts about orders.
Chart Visualization: Dynamic charts that show order data by month.
State Management: Uses BLoC for managing UI state.</br></br>
#How to Run the Project
Prerequisites
Flutter: Install the latest version of Flutter from flutter.dev.
Dart: Ensure Dart is installed (it comes with Flutter).
Editor: Use your preferred IDE (VS Code, Android Studio, etc.).
Steps to Run the Project
Clone the repository:

bash
Copy code
git clone https://github.com/belalgamal0/orders_challenge.git
Install dependencies:

bash
Copy code
cd orders_challenge
flutter pub get
Run the app:

bash
Copy code
flutter run
Ensure your emulator is running or connect a physical device.

#Technologies Used</br>
Flutter: Cross-platform mobile development framework.</br>
Dart: Programming language for Flutter.</br>
Bloc: State management library.</br>
Injectable & GetIt: Dependency injection libraries.</br>
Flutter Charts: Visualization of order data using charts.</br>
