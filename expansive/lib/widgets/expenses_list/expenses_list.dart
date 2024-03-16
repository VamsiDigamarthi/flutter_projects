import 'package:expansive/widgets/expenses_list/expense_item.dart';
import 'package:flutter/widgets.dart';
import 'package:expansive/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expense, required this.onRemoveExpense});

  final List<Expense> expense;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expense[index]),
        onDismissed: (direction) {
          onRemoveExpense(expense[index]);
        },
        child: ExpenseItem(
          expense: expense[index],
        ),
      ),
      itemCount: expense.length,
    );
  }
}
