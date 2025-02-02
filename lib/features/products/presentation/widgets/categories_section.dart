import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/products_bloc/product_bloc.dart';

class CategoriesSection extends StatefulWidget {
  final List<String> categories;
  const CategoriesSection({super.key, required this.categories});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(widget.categories.length, (index) {
            final category = widget.categories[index];
            final isSelected = _selectedIndex == index;

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.resolveWith(
                    (states) => isSelected ? Colors.white : Colors.black,
                  ),
                  backgroundColor: WidgetStateProperty.resolveWith(
                    (states) => isSelected ? Colors.blueGrey : Colors.grey[200],
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                  context
                      .read<ProductBloc>()
                      .add(GetProductsByCategoryEvent(category: category));
                },
                child: Text(category),
              ),
            );
          }),
        ),
      ),
    );
  }
}
