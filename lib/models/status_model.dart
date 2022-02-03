class Status {
  final String name;
  final String time;
  final String fileUrl;
  final bool viewed;
  Status({
    required this.name,
    required this.time,
    required this.fileUrl,
    this.viewed = false,
  });
}

List<Status> dummy = [
  Status(
      name: "Rachel",
      time: "12:34 AM",
      fileUrl:
          'https://images.unsplash.com/photo-1640622660914-4b56c79bb492?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
      viewed: false),
  Status(
      name: "Mike Poss",
      time: "1:22 PM",
      fileUrl:
          "https://images.unsplash.com/photo-1643779375522-4c53344c428e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
      viewed: true),
  Status(
      name: "Ankit Bhankharia",
      time: "6:08 AM",
      fileUrl:
          "https://images.unsplash.com/photo-1621609764095-b32bbe35cf3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyNnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
      viewed: false),
  Status(
      name: "Kissa",
      time: "5:06 PM",
      fileUrl:
          'https://images.unsplash.com/photo-1640622660914-4b56c79bb492?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
      viewed: true),
  // Status(
  //     name: "Harvey Spectre",
  //     time: "8:00 AM",
  //     fileUrl:
  //         "https://images.unsplash.com/photo-1643779375522-4c53344c428e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  //     viewed: false),
];
