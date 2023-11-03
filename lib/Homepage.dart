import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:pengaduan_masyarakat/components/PengaduanComponent.dart';
import 'package:pengaduan_masyarakat/components/UserListComponent.dart';
import 'package:pengaduan_masyarakat/controllers/masyarakatController.dart';

class Homepage extends StatelessWidget {
  @override
  MasyarakatController masyarakatController = Get.put(MasyarakatController());

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        floatingActionButton: FloatingButtonBottomSheet(context),
        body: Obx(() => masyarakatController.isloading.value
            ? Center(
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Column(
                children: [
                  masyarakatController.listMasyarakat.value.length == 0
                      ? Container(
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: Colors.deepPurple.shade300),
                          padding: EdgeInsets.symmetric(vertical: 40.0),
                          child: Center(
                              child: Text(
                            "Data masyarakat kosong",
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                      : UserListComponent(),
                  // UserListComponent(),
                  PengaduanComponent()
                ],
              )));
  }

  FloatingActionButton FloatingButtonBottomSheet(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.deepPurple.shade300,
      onPressed: () {
        Get.bottomSheet(Container(
          height: 800,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Buat Akun",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: masyarakatController.setFullName,
                      decoration: InputDecoration(
                        labelText: "Nama Lengkap",
                        labelStyle:
                            TextStyle(color: Colors.deepPurple.shade300),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300,
                              width: 2.0), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: masyarakatController.setUsername,
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle:
                            TextStyle(color: Colors.deepPurple.shade300),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300,
                              width: 2.0), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: masyarakatController.setNik,
                      decoration: InputDecoration(
                        labelText: "NIK",
                        labelStyle:
                            TextStyle(color: Colors.deepPurple.shade300),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300,
                              width: 2.0), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: masyarakatController.setPassword,
                      decoration: InputDecoration(
                        labelText: "Kata Sandi",
                        labelStyle:
                            TextStyle(color: Colors.deepPurple.shade300),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300,
                              width: 2.0), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: masyarakatController.setTelp,
                      decoration: InputDecoration(
                        labelText: "No. Telp",
                        labelStyle:
                            TextStyle(color: Colors.deepPurple.shade300),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple.shade300,
                              width: 2.0), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(16), // <-- Radius
                            ),
                            minimumSize: Size(350, 50),
                            backgroundColor: Colors.deepPurple.shade300),
                        onPressed: () {
                          final data = {
                            "nik": masyarakatController.setNik.text,
                            "nama": masyarakatController.setFullName.text,
                            "username": masyarakatController.setUsername.text,
                            "password": masyarakatController.setPassword.text,
                            "telp": masyarakatController.setTelp.text
                          };
                          masyarakatController.createMasyarakat(data);
                          Get.back();
                        },
                        // onPressed: () {
                        //   if (masyarakatController.setFullName.text.isNotEmpty &&
                        //       masyarakatController.setNik.text.isNotEmpty &&
                        //       masyarakatController.setUsername.text.isNotEmpty &&
                        //       masyarakatController.setPassword.text.isNotEmpty &&
                        //       masyarakatController.setTelp.text.isNotEmpty) {
                        //     masyarakatController.createMasyarakat(
                        //         masyarakatController.setFullName.text,
                        //         masyarakatController.setNik.text,
                        //         masyarakatController.setUsername.text,
                        //         masyarakatController.setPassword.text,
                        //         masyarakatController.setTelp.text);
                        //     Get.back();
                        //   }
                        // },
                        child: Text("Submit"))
                  ],
                ),
              ),
            ),
          ),
        ));
      },
      child: Icon(Icons.add),
    );
  }
}

// ListTile(
//                     leading: CircleAvatar(
//                       child: Text(
//                           '${masyarakatController.listMasyarakat.value[index].uuid}'),
//                     ),
//                     title: Text(
//                         '${masyarakatController.listMasyarakat.value[index].nama}'),
//                     subtitle: Text(
//                         '${masyarakatController.listMasyarakat.value[index].nik}'),
//                     // trailing: Icon(Icons.more_vert),
//                     onTap: () => Get.bottomSheet(Container(
//                       padding: EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(20),
//                               topRight: Radius.circular(20))),
//                       child: Column(
//                         children: [
//                           CircleAvatar(
//                             child: Text(
//                                 '${masyarakatController.listMasyarakat.value[index].uuid}'),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                   '${masyarakatController.listMasyarakat.value[index].nama}'),
//                               Text(
//                                   '@${masyarakatController.listMasyarakat.value[index].username}'),
//                               Text(
//                                   '${masyarakatController.listMasyarakat.value[index].nik}'),
//                               Container(
//                                 child: Text("Pengaduan"),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     )),
// onLongPress: () => Get.bottomSheet(Container(
//   color: Colors.white,
//   child: Column(
//     children: [
//       ElevatedButton(
//           onPressed: () {}, child: Text("Edit profil")),
//       ElevatedButton(
//           onPressed: () {
//             masyarakatController.deleteMasyarakat(
//                 masyarakatController
//                     .listMasyarakat.value[index].uuid
//                     .toString());
//           },
//           child: Text("Hapus profil"))
//     ],
//   ),
//   )),
// );
