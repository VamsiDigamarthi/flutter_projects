// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid();

final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  final String title;
  final double amount;
  final String id;
  final DateTime data;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.data,
    required this.category,
  }) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(data);
  }
}

class ExpenseBucket {
  ExpenseBucket({
    required this.category,
    required this.expense,
  });

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expense = allExpenses
            .where((element) => element.category == category)
            .toList();

  final Category category;
  final List<Expense> expense;

  double get totalExpenses {
    double sum = 0;
    for (final expense in expense) {
      sum += expense.amount;
    }
    return sum;
  }
}
