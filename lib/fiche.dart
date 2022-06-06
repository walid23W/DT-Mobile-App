import 'package:ethnography/filterchip.dart';
import 'package:ethnography/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'Services/authservice.dart';
import 'ViewResult.dart';
import 'card.dart';
import 'categorylist.dart';


class fiche extends StatefulWidget {

   fiche({Key? key, this.value2}) : super(key: key);
   final value2;
   @override
   _fiche createState() => _fiche(value2);
 }

class _fiche extends State<fiche>{

  int _currentStep = 0;
  var firstname,lastname,Profession,Age,mesfrustrations,bio,mesattentes;
  List<String> infos = [];
  var filter = [];
  var value2;
  var _list;
  _fiche(this.value2);

  @override
  Widget build(BuildContext context) {
    return(
        Scaffold(
          appBar: AppBar(
              title: const Text("Fiche Persona",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle:FontStyle.italic)),
              centerTitle: true,
            backgroundColor: Colors.blue,
            leading: IconButton(
               icon: const Icon(Icons.arrow_back_rounded),
             onPressed: () {
                  Navigator.push(
                       context,
                    MaterialPageRoute(
                builder: (context) => categorylist()));}
    ),),
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
            floatingActionButton: FloatingActionButton(onPressed: () async {
              if(_currentStep>=4) {
               infos.add(value2[1]);
              infos.add(firstname);
              infos.add(lastname);
              infos.add(bio);
              infos.add(mesattentes);
              infos.add(mesfrustrations);
              infos.add(Profession);
              infos.add(Age);
                    }
                   await AuthService().sendInfos(infos).then((val) => {
                        print("Success1")
                        });
                   await AuthService().getinfos(value2[1]).then((val)=>
              {
                   _list = Map<String, dynamic>.from(val.data['infos']).values.toList(),
                value2.add(_list),
    });
              Navigator.push(
                   context,
                   MaterialPageRoute(
                   builder: (context) => ViewResult(token : value2[2]))
                   );}
                      ,
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
              controller: TextEditingController(text: firstname),
              onChanged: (value) {
                firstname = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Entrer des caractères';
                }
                return null;
              },
         ),
          TextFormField(
        decoration: InputDecoration(labelText: 'Last Name'),
            controller: TextEditingController(text: lastname),
            onChanged: (value) {
              lastname = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Entrer des caractères';
              }
              return null;
            },
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
              controller: TextEditingController(text: Profession),
              onChanged: (value) {
                Profession = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Age'),
              controller: TextEditingController(text: Age),
              onChanged: (value) {
                Age = value;
              },
            )
          ],
        ),
        isActive: _currentStep >= 1,
        state: StepState.disabled
      ),
      Step(
          title: Text('Entrer une bio'),
          content: Column(
            children: <Widget> [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Bio'),
                maxLines: 3,
                controller: TextEditingController(text: bio),
                onChanged: (value) {
                  bio = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Entrer des caractères';
                  }
                  return null;
                },
              ),
            ],
          ),
          isActive: _currentStep >= 2,
          state: StepState.editing
      ),
      Step(
          title: const Text("Décrivez"),
          content: Column(
            children: <Widget> [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Vos attentes'),
                maxLines: 3,
                controller: TextEditingController(text: mesattentes),
                onChanged: (value) {
                  mesattentes = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Entrer des caractères';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Vos frustrations'),
                maxLines: 3,
                controller: TextEditingController(text: mesfrustrations),
                onChanged: (value) {
                  mesfrustrations = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Entrer des caractères';
                  }
                  return null;
                },
              )
            ],
          ),
          isActive: _currentStep >= 3 ,
          state: StepState.indexed
      ),
      Step(
          title: const Text("Situez la personnalité de votre cible"),
          content:  Column(
            children: <Widget> [
              Container(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 3.0,
                  children: const <Widget> [
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