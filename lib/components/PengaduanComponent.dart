import 'package:flutter/material.dart';

class PengaduanComponent extends StatelessWidget {
  const PengaduanComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade50,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0), topLeft: Radius.circular(20.0)),
        ),
        child: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child:
                            Text('test', style: TextStyle(color: Colors.white)),
                        radius: 20,
                        backgroundColor: Colors.deepPurple.shade300,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Dhendi Syafa ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                      // CircleAvatar(
                      //   child: Text(
                      //       '${masyarakatController.listMasyarakat.value[index].uuid}'),
                      // ),
                      // Text(
                      //     '${masyarakatController.listMasyarakat.value[index].nama}')
                    ],
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              Container(
                  // child: Image(image: image),
                  child: Text("ini nanti foto "))
            ],
          ),
        )),
      ),
    );
  }
}
