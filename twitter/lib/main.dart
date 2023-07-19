import 'package:flutter/material.dart';
import 'package:twitter/5step%20signup/step1_signup.dart';
import 'package:twitter/5step%20signup/step2_signup.dart';
import 'package:twitter/5step%20signup/step3_signup.dart';
import 'package:twitter/5step%20signup/step4_signup.dart';
import 'package:twitter/5step%20signup/step5_signup.dart';
import 'package:twitter/add%20account/add_account.dart';
import 'package:twitter/analysis/analysis.dart';
import 'package:twitter/bookmarks/bookmarks.dart';
import 'package:twitter/data%20saver/data_saver.dart';
import 'package:twitter/display/display.dart';
import 'package:twitter/followers/followers.dart';
import 'package:twitter/help%20center/help_center.dart';
import 'package:twitter/landing/landing.dart';
import 'package:twitter/lists/lists.dart';
import 'package:twitter/login/login.dart';
import 'package:twitter/monetization/monetization.dart';
import 'package:twitter/notification/notification.dart';
import 'package:twitter/professionals/professionals.dart';
import 'package:twitter/profile/profile.dart';
import 'package:twitter/register/register.dart';
import 'package:twitter/settings%20and%20privacy/setting_and_privacy.dart';
import 'package:twitter/tweet/tweet.dart';
import 'package:twitter/twitteradds/twitter_adds.dart';
import 'package:twitter/widgets/bottom_nav.dart';
import 'package:twitter/widgets/side_nav.dart';

void main() {
  runApp( MaterialApp(
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
