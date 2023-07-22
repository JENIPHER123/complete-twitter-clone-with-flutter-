import 'package:flutter/material.dart';
import 'package:twitter_main/5step%20signup/step1_signup.dart';
import 'package:twitter_main/5step%20signup/step2_signup.dart';
import 'package:twitter_main/5step%20signup/step3_signup.dart';
import 'package:twitter_main/5step%20signup/step4_signup.dart';
import 'package:twitter_main/5step%20signup/step5_signup.dart';
import 'package:twitter_main/add%20account/add_account.dart';
import 'package:twitter_main/analysis/analysis.dart';
import 'package:twitter_main/bookmarks/bookmarks.dart';
import 'package:twitter_main/data%20saver/data_saver.dart';
import 'package:twitter_main/display/display.dart';
import 'package:twitter_main/followers/followers.dart';
import 'package:twitter_main/help%20center/help_center.dart';
import 'package:twitter_main/landing/landing.dart';
import 'package:twitter_main/lists/lists.dart';
import 'package:twitter_main/login/login.dart';
import 'package:twitter_main/monetization/monetization.dart';
import 'package:twitter_main/notification/notification.dart';
import 'package:twitter_main/professionals/professionals.dart';
import 'package:twitter_main/profile/profile.dart';
import 'package:twitter_main/register/register.dart';
import 'package:twitter_main/settings%20and%20privacy/setting_and_privacy.dart';
import 'package:twitter_main/tweet/tweet.dart';
import 'package:twitter_main/twitteradds/twitter_adds.dart';
import 'package:twitter_main/widgets/bottom_nav.dart';
import 'package:twitter_main/widgets/side_nav.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:{
      '/':(context) => const Landing(),
      'login':(context) => const Login(),
      'register':(context) => const Register(),
      'step1_signup':(context) => const Step1Signup(),
      'step2_signup':(context) => const Step2Signup(),
      'step3_signup':(context) => const Step3Signup(),
      'step4_signup':(context) => const Step4Signup(),
      'step5_signup':(context) => const Step5Signup(),
      'add_account':(context) => const AddAccount(),
      'analysis':(context) => const Analysis(),
      'bookmarks':(context) => const BookMark(),
      'data_saver':(context) => const DataSaver(),
      'display':(context) => const Display(),
      'followers':(context) => const Followers(),
      'help_center':(context) => const HelpCenter(),
      'lists':(context) => const Lists(),
      'monetization':(context) => const Monetization(),
      'notification':(context) => const Notifications(),
      'professionals':(context) => const Professionals(),
      'profile':(context) => const Profile(),
      'settings_and_privacy':(context) => const SettingsAndPrivacy(),
      'tweet':(context) => const Tweet(),
      'twitter_adds':(context) => const TwitterAdds(),

      /* my custom widgets */
      'bottom_nav':(context) => const BottomNav(),
      'side_nav':(context) => const SideNav()


    }
  ));
}
