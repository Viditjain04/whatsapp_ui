class ChatModel {
  final String name;
  final String message;
  final String time;
  final String image;
  // constructor
  ChatModel({this.name, this.message, this.image, this.time});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Jeff Bezos",
      message: "ohk , i will be there",
      time: "15:30",
      image: "👨"),
  ChatModel(name: "Bill gates", message: "👍😂", time: "1:14", image: "🎙"),
  ChatModel(
      name: "Mark zuckerberg", message: "🤷‍😎", time: "3:24", image: "f"),
  ChatModel(name: "Bernard", message: "Wait...", time: "3:29", image: "💵"),
  ChatModel(name: "Mukesh ambani", message: "Hmm", time: "2:55", image: "JIO"),
  ChatModel(
      name: "Steve Ballmer", message: "Great", time: "1:05", image: "👨‍🎓"),
  ChatModel(
      name: "Larry Page",
      message: "Meet you tomorrow at 3 p.m.",
      time: "14:55",
      image: "💻"),
];
