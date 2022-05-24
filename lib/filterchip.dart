import 'package:ethnography/helpers/appcolors.dart';
import 'package:flutter/material.dart';

class filterchip extends StatefulWidget {

  final String name;

  const filterchip({Key? key, required this.name}) : super(key: key);

  @override
  _filterchip createState() => _filterchip();
}
  class _filterchip extends State<filterchip>{

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.name),
      labelStyle: const TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),
      selected: _isSelected,
      backgroundColor: Colors.blue,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: AppColors.blue5,
    );
  }
  }

