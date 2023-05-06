import 'package:bigmartsalesprediction/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SignupTopImage extends StatelessWidget{
  const SignupTopImage({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        const Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold),),

        const SizedBox(height: defaultPadding*2,),

        Row(
          children: [
            const Spacer(),

            Expanded(flex: 8,child: SvgPicture.asset('assets/icons/signup.svg')),
            const Spacer(),
          ],
        )
      ],
    );
  }
}