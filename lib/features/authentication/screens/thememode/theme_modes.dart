import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/controllers/theme_mode_controller.dart';
import 'package:simple_signin_signup/features/authentication/screens/login/login.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';

class AppThemeModes extends StatelessWidget {
const AppThemeModes({ super.key });

  @override
  Widget build(BuildContext context){
    final controller = Get.put(ThemeModeController());
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: ()=>Get.offAll(()=>const LoginPage()), icon: const Icon(Icons.arrow_back)),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Obx(
        ()=> ListTile(leading: Text('System',style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontFamily: ''),),
        contentPadding: EdgeInsets.all(AppSizes.defaultPadding),
        trailing:  Icon(controller.isSystem.value?Icons.circle:Icons.circle_outlined),
        onTap: () { controller.isSystem.value=true;
        controller.isLight.value=false;
        controller.isDark.value=false;},
        horizontalTitleGap: 250,),
      ),
      Obx(
        ()=> ListTile(leading: Text('Light',style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontFamily: ''),),
        contentPadding: EdgeInsets.all(AppSizes.defaultPadding),
        trailing:  Icon(controller.isLight.value?Icons.circle:Icons.circle_outlined),
        onTap:(){controller.isLight.value=true;
        controller.isSystem.value=false;
        controller.isDark.value=false;},
        horizontalTitleGap: 250,),
      ),
      Obx(
        ()=> ListTile(leading: Text('Dark',style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontFamily: ''),),
        contentPadding: EdgeInsets.all(AppSizes.defaultPadding),
        trailing:  Icon(controller.isDark.value?Icons.circle:Icons.circle_outlined),
        onTap: () { controller.isDark.value=true;
        controller.isSystem.value=false;
        controller.isLight.value=false;},
        horizontalTitleGap: 250,),
      )],),
    );
  }
}