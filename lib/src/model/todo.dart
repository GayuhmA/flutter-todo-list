class ToDo {
  String id;
  String todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Eat', isDone: true),
      ToDo(id: '02', todoText: 'Code', isDone: true),
      ToDo(id: '03', todoText: 'Sleep'),
      ToDo(id: '04', todoText: 'Praying'),
      ToDo(id: '05', todoText: 'Crying'),
      ToDo(id: '06', todoText: 'Evaluating'),
    ];
  }
}