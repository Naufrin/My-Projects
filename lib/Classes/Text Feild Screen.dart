import 'package:flutter/material.dart';

class Textscreen extends StatefulWidget {
  const Textscreen({Key? key}) : super(key: key);

  @override
  State<Textscreen> createState() => _TextscreenState();
}

class _TextscreenState extends State<Textscreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  bool password = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller1.text.isEmpty) {
            print("Enter username");
          } else if (controller2.text.isEmpty) {
            print("Enter password");
          } else {
            print("Successfull logged");
          }
        },
        child: Icon(Icons.subject_outlined),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TextField"),
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 5),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField"),
              TextField(
                controller: controller2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 5),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField Controller"),
              TextField(
                controller: controller,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField :maxlines 2"),
              TextField(
                controller: controller,
                maxLines: 7,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField maxlenth 2"),
              TextField(
                controller: controller,
                maxLength: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField style ,color"),
              TextField(
                controller: controller,
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField capuitaliozation"),
              TextField(
                controller: controller,
                style: TextStyle(color: Colors.red),
                textCapitalization: TextCapitalization.words,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField sentence"),
              TextField(
                controller: controller,
                style: TextStyle(color: Colors.red),
                textCapitalization: TextCapitalization.sentences,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField charecter"),
              TextField(
                controller: controller,
                style: TextStyle(color: Colors.red),
                textCapitalization: TextCapitalization.characters,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField:  textAlign: TextAlign.center,"),
              TextField(
                controller: controller,
                style: TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
                textCapitalization: TextCapitalization.characters,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField: textDirection: TextDirection.rtl,"),
              TextField(
                controller: controller,
                style: TextStyle(color: Colors.red),
                textDirection: TextDirection.rtl,
                textCapitalization: TextCapitalization.characters,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField: toolbarOptions"),
              TextField(
                toolbarOptions: ToolbarOptions(
                    copy: true, cut: true, paste: true, selectAll: true),
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField:  showCursor: false,readOnly: true"),
              TextField(
                showCursor: true,
                readOnly: true,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField:   enabled: true,"),
              TextField(
                enabled: false,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField: obscureText: true,"),
              TextField(
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField:  autofocus: false,"),
              TextField(
                autofocus: false,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField: CursorOptions"),
              TextField(
                cursorRadius: Radius.circular(1),
                cursorWidth: 10,
                cursorColor: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Text("TextField: decoration"),
              TextField(
                obscureText: password,
                // keyboardType: TextInputType.emailAddress,
                // decoration: InputDecoration(hintText: "Hello",prefix: Container(height: 20,width: 20,color: Colors.red,)),
                // decoration: InputDecoration(hintText: "Hello",prefixIcon: Icon(Icons.person,color: Colors.amber,),),
                // decoration: InputDecoration(hintText: "Hello",prefixText: "Hii",prefixStyle: TextStyle(color: Colors.red)),
                // decoration: InputDecoration(hintText: "Hello",suffixText: "Hii",suffixStyle: TextStyle(color: Colors.red)),
                decoration: InputDecoration(
                  hintText: "Hello",
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (password == false) {
                        setState(() {
                          password = true;
                        });
                      } else {
                        setState(() {
                          password = false;
                        });
                      }
                    },
                    icon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
