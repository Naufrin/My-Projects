import 'package:flutter/material.dart';
import 'Sqf DataCard Screen.dart';
import 'SQF DataModel Screen.dart';
import 'SQF DataBase Screen.dart';

  class SqfLightScreen extends StatefulWidget {
    SqfLightScreen({Key? key}) : super(key: key);

  @override
  State<SqfLightScreen> createState() => _SqfLightScreenState();
}

class _SqfLightScreenState extends State<SqfLightScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();
  late DB db;

  List<DataModel> datas = [];

  bool fetching = true;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    db = DB();
    getData2();
  }

  void getData2() async {
    datas = await db.getData();
    setState(() {
      fetching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          showMyDialog();
        }),
        body: fetching
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
            itemCount: datas.length,
            itemBuilder: ((context, index) => DataCard(
              data: datas[index],
              edit: edit,
              index: index,
              delete: delete,
            ))));
  }

  void showMyDialog() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(14),
            content: Container(
              height: 150,
              child: Column(
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(hintText: "Title"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: subtitleController,
                    decoration: InputDecoration(hintText: "Subtitle"),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    DataModel datalocal = DataModel(
                        title: titleController.text,
                        subtitle: subtitleController.text);
                    db.insertDB(datalocal);
                    datalocal.id = 1;
                    setState(() {
                      datas.add(datalocal);
                    });
                    titleController.clear();
                    subtitleController.clear();

                    Navigator.pop(context);
                  },
                  child: Text("Save"))
            ],
          );
        });
  }

  void showMyDialogUpdate() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(14),
            content: Container(
              height: 150,
              child: Column(
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(hintText: "Title"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: subtitleController,
                    decoration: InputDecoration(hintText: "Subtitle"),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    DataModel newData = datas[currentIndex];
                    newData.title = titleController.text;
                    newData.subtitle = subtitleController.text;
                    db.updateData(newData, newData.id!);
                    setState(() {});
                    Navigator.pop(context);
                  },
                  child: Text("Update"))
            ],
          );
        });
  }

  void edit(index) {
    currentIndex = index;
    titleController.text = datas[index].title;
    subtitleController.text = datas[index].subtitle;
    showMyDialogUpdate();
  }

  void delete(int index) async {
    db.deleteData(datas[index].id!);
    setState(() {
      datas.removeAt(index);
    });
  }
}
