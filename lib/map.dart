import 'package:ethnography/helpers/appcolors.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'categorylist.dart';
import 'filterchip.dart';

class map extends StatefulWidget {

  @override
  _map createState() => _map();
}

class _map extends State<map>{

  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue5,
        title: const Text("Journey Map",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle:FontStyle.italic)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => categorylist()),
            );
          },
        ),
      ),
        body: Stepper(
          steps: _stepper(),
          physics: ClampingScrollPhysics(),
          currentStep: _currentStep,
          onStepTapped: (step) {
            setState(() {
              _currentStep = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if(_currentStep < _stepper().length - 1) {
                _currentStep = _currentStep + 1;}
              else {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => card()));
              }
            }
            );
          },
          onStepCancel: () {
            setState(() {
              if(_currentStep > 0) {
                _currentStep -=1;
              }
              else{
                _currentStep = 0;
              }
            });
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          if(_currentStep>=4) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => card()));
          };},
          child: const Icon(Icons.arrow_forward_sharp),
        )
    )
    );
  }

  List<Step> _stepper(){
    List<Step> _steps = [
      Step(
          title: Text('Name'),
          content: Column(
            children: <Widget> [
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
              )
            ],
          ),
          isActive: _currentStep >= 0,
          state: StepState.complete
      ),
      Step(
          title: Text('Age & Profession'),
          content: Column(
            children: <Widget> [
              TextFormField(
                decoration: InputDecoration(labelText: 'Profession'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Age'),
              )
            ],
          ),
          isActive: _currentStep >= 1,
          state: StepState.disabled
      ),
      Step(
          title: Text('Enter a bio'),
          content: Column(
            children: <Widget> [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Bio'),
                maxLines: 3,
              ),
            ],
          ),
          isActive: _currentStep >= 2,
          state: StepState.editing
      ),
      Step(
          title: const Text("Describe"),
          content: Column(
            children: <Widget> [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Vos attentes'),
                maxLines: 3,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Vos frustrations'),
                maxLines: 3,
              )
            ],
          ),
          isActive: _currentStep >= 3 ,
          state: StepState.indexed
      ),
      Step(
          title: const Text("Situez votre personnalité"),
          content: Column(
            children: <Widget> [
              Container(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 3.0,
                  children:  const <Widget> [
                    filterchip(name: 'Social'),
                    filterchip(name: 'Introverti'),
                    filterchip(name: 'Extraverti'),
                    filterchip(name: 'Snob'),
                    filterchip(name: 'Amical'),
                    filterchip(name: 'Créateur'),
                    filterchip(name: 'Conservateur'),
                    filterchip(name: 'Passif'),
                    filterchip(name: 'Actif'),
                  ],
                ),
              )
            ],
          ),
          isActive: _currentStep >= 3,
          state: StepState.indexed
      )
    ];
    return _steps;
  }
  }
