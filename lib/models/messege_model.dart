import 'package:OneHand/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;
  final String image;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
    this.image,
  });
}

final User currentUser = User(
  id: 0,
  name: "Current User",
);
final User sebastian = User(
    id: 1,
    name: "Sebastian Arenas",
    image: Image.network(
        "https://www.urgencias24h.net/wp-content/uploads/2019/12/electricista-urgente-24h-nou-barris-barcelona.jpg"));
final User andres = User(
  id: 2,
  name: "Andres Perez",
  // image:
  //     "https://tecrep24.com/wp-content/uploads/2020/03/electricista-malaga.png"
);
final User daniel = User(
  id: 3,
  name: "Daniel Basulto",
  // image:
  //     "http://www.isaelectricistas.pe/wp-content/uploads/2016/10/Electricista-en-La-Molina-1.jpg"
);
final User juan = User(
  id: 4,
  name: "Juan David Perez",
  // image:
  //     "https://www.aytosanlorenzo.es/wp-content/uploads/2018/04/electricista.jpg"
);

List<Message> profesionales = [
  Message(
      sender: sebastian,
      time: "",
      text: "Electicista, Intalaciones en general",
      isLiked: false,
      unread: true,
      image:
          "https://www.urgencias24h.net/wp-content/uploads/2019/12/electricista-urgente-24h-nou-barris-barcelona.jpg"),
  Message(
      sender: daniel,
      time: "",
      text: "Intalaciones electricas interior, exterior",
      isLiked: false,
      unread: true,
      image:
          "http://www.europlusservicios.com/imagen/Electricista-en-madrid.jpg"),
  Message(
      sender: juan,
      time: "",
      text: "Electricista. Elestricidad general. ",
      isLiked: false,
      unread: true,
      image:
          "http://www.isaelectricistas.pe/wp-content/uploads/2016/10/Electricista-en-La-Molina-1.jpg"),
  Message(
      sender: andres,
      time: "",
      text: "Electricista. Intalaciones interior y exterior",
      isLiked: false,
      unread: true,
      image:
          "https://www.aytosanlorenzo.es/wp-content/uploads/2018/04/electricista.jpg"),
];

List<Message> chats = [
  Message(
    sender: juan,
    time: "12:12 AM",
    text: "Electricista. Elestricidad general.",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sebastian,
    time: "00:30 AM",
    text: "Su problema se puede solucio...",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: andres,
    time: "14:23 PM",
    text: "Si, claro",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: daniel,
    time: "5:30 PM",
    text: "Cual es su problema?",
    isLiked: false,
    unread: true,
  )
];

List<Message> messages = [
  Message(
    sender: sebastian,
    time: '5:30 PM',
    text: 'Hola, tengo un problema con mi computadora',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: andres,
    time: '4:30 PM',
    text: 'Hola buenas, digame cual es su problema',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sebastian,
    time: '3:45 PM',
    text: "El problema es que mi computadora anda lenta y se apaga",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sebastian,
    time: '3:15 PM',
    text: 'ayuda!!',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: andres,
    time: '2:30 PM',
    text: 'Bueno, al parecer su computadora necesita mantencion',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: andres,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
