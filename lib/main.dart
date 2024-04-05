import 'package:rebat_students/pages/welcome_rebat.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


/*import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; */

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Rebat());
}
class Rebat extends StatelessWidget {
  const Rebat({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
return const MaterialApp( //MaterialApp وجودة مهم جداًلبداء بناء جسم التطبيق 
        
       home: welcome_rebat(), 
       );
  }
}

