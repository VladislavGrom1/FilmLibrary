
import 'dart:developer';
import 'dart:ffi';

import 'package:film_library/presentations/User.dart';
import 'package:film_library/presentations/annotation.dart';

class Globals{


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
      ],
      favourity: [
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

  static void cleanFilmsInFavourity(){
    for(var i in usersData){
      if(i.currentUser == true){
        i.favourity.clear();
      }
    }
  }

  static void cleanOneFilmInFavourity(Annotation film){
    for(var i in usersData){
      if(i.currentUser == true){
        for(int index = 0; index<i.favourity.length; index++){
          if(i.favourity[index] == film){
            i.favourity.removeAt(index);
          }
        }
      }
    }
  }

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

  static void addFilmInFavourity(Annotation film){
    bool isAdded = false; 
    for(var i in usersData){
      if(i.currentUser == true)
      {
        for(var j in i.favourity){
          if(j == film)
          {
            isAdded = true;
          }
        }
      }   
    }
    if(!isAdded)
    {
      for(var i in usersData){
        if(i.currentUser == true){
          i.favourity.add(film);
        }
        if(i.favourity[0].title == "Здесь будет история просмотра")
        {
           i.favourity.removeAt(0);
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
            ],
          favourity: [
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
    }
}