import 'package:flutter/material.dart';
import 'sqlsetup.dart';
import 'notemodel.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Recipes",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(238, 8, 32, 187),
      ),
      body: NotesPage(),
    );
  }
}

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List<Note> _notes = [];
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  void _loadNotes() async {
    final notes = await DBhelper.instance.readAllNotes();
    setState(() {
      _notes = notes;
    });
  }

  void _addNote() async {
    if (_titleController.text.isEmpty || _contentController.text.isEmpty) {
      return;
    }

    final note = Note(
      title: _titleController.text,
      content: _contentController.text,
    );
    await DBhelper.instance.create(note);
    _titleController.clear();
    _contentController.clear();
    _loadNotes();
  }

  void _deletenote(int id) async {
    await DBhelper.instance.delete(id);
    _loadNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      TextField(
        controller: _titleController,
        decoration: InputDecoration(labelText: 'Title'),
      ),
      TextField(
        controller: _contentController,
        decoration: InputDecoration(labelText: 'Content'),
      ),
      ElevatedButton(
        onPressed: _addNote,
        child: Text("Add Note"),
      ),
      Flexible(
        fit: FlexFit.loose,
        child: ListView.builder(
          itemCount: _notes.length,
          itemBuilder: (context, index) {
            final note = _notes[index];
            return ListTile(
              title: Text(note.title),
              subtitle: Text(note.content),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => _deletenote(note.id!),
              ),
            );
          },
        ),
      )
    ]);
  }
}
