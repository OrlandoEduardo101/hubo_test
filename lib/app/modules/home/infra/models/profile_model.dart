import 'package:hubo_test/app/modules/home/domain/entities/user_profile.dart';

class ProfileModel extends UserProfile {
  ProfileModel({String name, String responsibility, String urlImg, String bio, String linkedin, String github, String google, String whats}) : super(name, responsibility,urlImg, bio, linkedin, github, google, whats);
  
}