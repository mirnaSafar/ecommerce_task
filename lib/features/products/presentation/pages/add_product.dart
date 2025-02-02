import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/utils.dart';
import '../../domain/entities/product.dart';
import '../bloc/add_product_bloc/add_product_bloc.dart';
import '../bloc/categories_bloc/categories_bloc.dart';
import '../widgets/category_dropdown.dart';
import '../widgets/custom_text_field.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _category = TextEditingController();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _price = TextEditingController();
  final TextEditingController _description = TextEditingController();
  final TextEditingController _imageUrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(CategoriesEvent.getAllCategoriesEvent());
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      context.read<AddProductBloc>().add(AddProductRequested(
            product: Product(
              category: _category.text,
              image: _imageUrl.text,
              price: double.parse(_price.text),
              description: _description.text,
              title: _title.text,
            ),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Insert New Product')),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            width: 0.9.sw,
            child: Form(
              key: _formKey,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BlocBuilder<CategoriesBloc, CategoriesState>(
                    builder: (context, state) {
                      return state.when(
                        loading: () =>
                            const CircularProgressIndicator.adaptive(),
                        loaded: (categories) => CategoryDropdown(
                          validatorMessage: 'Please Select Category',
                          categories: categories,
                          controller: _category,
                        ),
                        error: (message) => _buildReloadCategoriesBtn(context),
                      );
                    },
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    controller: _title,
                    label: 'Title',
                    validatorMessage: 'Please enter the title',
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _price,
                    label: 'Price',
                    validatorMessage: 'Please enter price',
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _description,
                    label: 'Description',
                    validatorMessage: 'Please enter description',
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    controller: _imageUrl,
                    label: 'Image URL',
                  ),
                  SizedBox(height: 30.h),
                  BlocConsumer<AddProductBloc, AddProductState>(
                    listener: (context, state) {
                      if (state is AddProductFailure) {
                        showCustomSnackBar(context, state.message,
                            color: Colors.red);
                      }
                      if (state is AddProductSuccess) {
                        showCustomSnackBar(
                            context, 'Product added successfully');
                      }
                    },
                    builder: (context, state) {
                      return state is AddProductLoading
                          ? const CircularProgressIndicator.adaptive()
                          : ElevatedButton(
                              onPressed: _submitForm,
                              child: const Text('Add Product'),
                            );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReloadCategoriesBtn(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: () {
          context
              .read<CategoriesBloc>()
              .add(CategoriesEvent.getAllCategoriesEvent());
        },
        icon: const Icon(Icons.refresh),
        label: const Text('Try Again'),
      ),
    );
  }
}
