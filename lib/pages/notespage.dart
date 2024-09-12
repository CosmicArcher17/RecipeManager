import 'package:flutter/material.dart';
import 'package:recipe_manager/pages/sqlsetup.dart';

class _NotesPageState extends State<NotesPage>{
  List<Note>_notes=[];
  final _titleController= TextEditingController();
  final _contentController=TextEditingController();

  @override
  void initstate(){
    super.initstate();
    _loadNotes();
  }

  void _loadNotes() async{
    final notes=await DBhelper.instance.readAllNotes();
    setState(() {
      _notes=notes;
    });
  }

  void _addNote() async{
    if(_titleController.text.isEmpty||_contentController.text.isEmpty){
      return;
    }

    final note=Note(
      title:_titleController.text,
      content: _contentController.text,
    );
    await DBhelper.instance.create(note);
    _titleController.clear();
    _contentController.clear();
    _loadNotes();
  }

  void _deletenote(int id) async{
    await DBhelper.instance.delete(id);
    _loadNotes();
  }
}
class NotesPage extends StatefulWidget{
  @override
  _NotesPageState createState()=> _NotesPageState();
}
