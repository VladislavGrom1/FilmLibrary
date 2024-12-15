
import 'dart:developer';
import 'dart:ffi';

import 'package:film_library/presentations/User.dart';
import 'package:film_library/presentations/annotation.dart';

class Globals{
  // static List<Annotation> history = [
  //   Annotation(
  //     title: "Здесь будет история просмотра",
  //     year: "",
  //     country: "",
  //     genre: "",
  //     director: "",
  //     duration: "",
  //     age: "",
  //     rating: "",
  //     mainRoles: "",
  //     description: "",
  //     cinema: "",
  //     imagePath: "",
  //   ),
  // ];

  static List<Annotation> favourity = [
    Annotation(
      title: "",
      year: "",
      country: "",
      genre: "",
      director: "",
      duration: "",
      age: "",
      rating: "",
      mainRoles: "",
      description: "",
      cinema: "",
      imagePath: "",
    ),
  ];

  static List<User> usersData = [
    User(
      name: "Владислав",
      email: "vaganov.vladislav2015@yandex.ru",
      password: "111",
      userHistory: [
        Annotation(
          title: "Здесь будет история просмотра",
          year: "",
          country: "",
          genre: "",
          director: "",
          duration: "",
          age: "",
          rating: "",
          mainRoles: "",
          description: "",
          cinema: "",
          imagePath: "",
        ),
      ]
    ),
  ];

  static void addFilmInHistory(Annotation film){
    bool isWatched = false; 
    for(var i in usersData){
      if(i.currentUser == true)
      {
        for(var j in i.userHistory){
          if(j == film)
          {
            isWatched = true;
          }
        }
      }   
    }
    if(!isWatched)
    {
      for(var i in usersData){
        if(i.currentUser == true){
          i.userHistory.add(film);
        }
        if(i.userHistory[0].title == "Здесь будет история просмотра")
        {
           i.userHistory.removeAt(0);
        }
        
      }
    }
  }

  static void logUser(String email){
    for(var i in usersData){
      i.currentUser = false;
    }
    for(var i in usersData){
      if(i.email == email)
      {
        i.currentUser = true;
      }
    }
  }

  static void regUser(String name, String email, String password, bool currentUser){
      for(var i in usersData){
        i.currentUser = false;
      }
      User newUser = User(
        name: name, 
        email: email, 
        password: password, 
        currentUser: currentUser, 
        userHistory: [
              Annotation(
                title: "Здесь будет история просмотра",
                year: "",
                country: "",
                genre: "",
                director: "",
                duration: "",
                age: "",
                rating: "",
                mainRoles: "",
                description: "",
                cinema: "",
                imagePath: "",
              ),
            ]
        );

      usersData.add(newUser);
      log(usersData[1].name);
      log(usersData[1].email);
      log(usersData[1].password);
      log(usersData[1].currentUser.toString());
    }
}