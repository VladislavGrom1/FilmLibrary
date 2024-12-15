
import 'package:film_library/presentations/Annotation.dart';

class Globals{
  static List<Annotation> history = [
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
  ];

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

  static void addFilmInHistory(Annotation film){
    bool isWatched = false; 
    for(var i in history){
      if(i == film)
      {
        isWatched = true;
      }
    }
    if(!isWatched)
    {
      history.add(film);
      if(history[0].title == "Здесь будет история просмотра")
      {
        history.removeAt(0);
      }
    }
    
  }
}