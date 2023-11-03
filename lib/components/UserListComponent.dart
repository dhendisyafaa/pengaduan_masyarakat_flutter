import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pengaduan_masyarakat/controllers/masyarakatController.dart';

class UserListComponent extends StatelessWidget {
  // const UserListComponent({super.key});

  MasyarakatController masyarakatController = Get.put(MasyarakatController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: masyarakatController.listMasyarakat.value.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(0),
              child: SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  onPressed: () => Get.bottomSheet(Container(
                    height: 250,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.deepPurple.shade300,
                          child: Text(
                              '${masyarakatController.listMasyarakat.value[index].nik}',
                              style: TextStyle(color: Colors.white)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              '${masyarakatController.listMasyarakat.value[index].nama}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                                '@${masyarakatController.listMasyarakat.value[index].username}',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black87)),
                            Text(
                                '${masyarakatController.listMasyarakat.value[index].telp}',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black87)),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [Divider(color: Colors.black)],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      width: 1.0,
                                      color: Colors.deepPurple.shade300,
                                    ),
                                    elevation: 0,
                                    minimumSize: Size(160, 50),
                                    backgroundColor: Colors.white),
                                onPressed: () {
                                  Get.bottomSheet(Container(
                                    height: 400,
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                    child: Center(
                                      child: SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Edit Profile",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black87),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              TextField(
                                                controller: masyarakatController
                                                    .setFullName,
                                                // controller:
                                                //     TextEditingController(
                                                //         text:
                                                //             masyarakatController
                                                //                 .listMasyarakat
                                                //                 .value[index]
                                                //                 .nama
                                                //                 .toString()),
                                                decoration: InputDecoration(
                                                  labelText: "Nama Lengkap",
                                                  labelStyle: TextStyle(
                                                      color: Colors
                                                          .deepPurple.shade300),
                                                  fillColor: Colors.white,
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.deepPurple
                                                            .shade300,
                                                        width: 2.0),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.deepPurple
                                                            .shade300,
                                                        width:
                                                            2.0), //<-- SEE HERE
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              TextField(
                                                controller: masyarakatController
                                                    .setUsername,
                                                // controller:
                                                //     TextEditingController(
                                                //         text:
                                                //             masyarakatController
                                                //                 .listMasyarakat
                                                //                 .value[index]
                                                //                 .username
                                                //                 .toString()),
                                                decoration: InputDecoration(
                                                  labelText: "Username",
                                                  labelStyle: TextStyle(
                                                      color: Colors
                                                          .deepPurple.shade300),
                                                  fillColor: Colors.white,
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.deepPurple
                                                            .shade300,
                                                        width: 2.0),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.deepPurple
                                                            .shade300,
                                                        width:
                                                            2.0), //<-- SEE HERE
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              TextField(
                                                controller: masyarakatController
                                                    .setTelp,
                                                // controller:
                                                //     TextEditingController(
                                                //         text:
                                                //             masyarakatController
                                                //                 .listMasyarakat
                                                //                 .value[index]
                                                //                 .telp
                                                //                 .toString()),
                                                decoration: InputDecoration(
                                                  labelText: "No. Telp",
                                                  labelStyle: TextStyle(
                                                      color: Colors
                                                          .deepPurple.shade300),
                                                  fillColor: Colors.white,
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.deepPurple
                                                            .shade300,
                                                        width: 2.0),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.deepPurple
                                                            .shade300,
                                                        width:
                                                            2.0), //<-- SEE HERE
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16), // <-- Radius
                                                          ),
                                                          minimumSize:
                                                              Size(350, 50),
                                                          backgroundColor:
                                                              Colors.deepPurple
                                                                  .shade300),
                                                  onPressed: () {
                                                    final data = {
                                                      "nik":
                                                          masyarakatController
                                                              .setNik.text,
                                                      "nama":
                                                          masyarakatController
                                                              .setFullName.text,
                                                      "username":
                                                          masyarakatController
                                                              .setUsername.text,
                                                      "password":
                                                          masyarakatController
                                                              .setPassword.text,
                                                      "telp":
                                                          masyarakatController
                                                              .setTelp.text
                                                    };
                                                    masyarakatController
                                                        .updateMasyarakat(
                                                            masyarakatController
                                                                .listMasyarakat
                                                                .value[index]
                                                                .uuid
                                                                .toString(),
                                                            data);
                                                    Get.back();
                                                  },
                                                  child: Text("Submit"))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ));
                                },
                                child: Text(
                                  "Edit profil",
                                  style: TextStyle(
                                      color: Colors.deepPurple.shade300),
                                )),
                            SizedBox(
                              width: 3,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                      width: 1.0,
                                      color: Colors.red,
                                    ),
                                    elevation: 0,
                                    minimumSize: Size(160, 50),
                                    backgroundColor: Colors.white),
                                onPressed: () {
                                  masyarakatController.deleteMasyarakat(
                                      masyarakatController
                                          .listMasyarakat.value[index].uuid
                                          .toString());
                                },
                                child: Text("Hapus profil",
                                    style: TextStyle(color: Colors.redAccent)))
                          ],
                        ),
                      ],
                    ),
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.deepPurple.shade300,
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                  text:
                                      '${masyarakatController.listMasyarakat.value[index].nik}'),
                            ),
                            radius: 28,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                            style: TextStyle(color: Colors.white, fontSize: 10),
                            text:
                                '${masyarakatController.listMasyarakat.value[index].username}'),
                      )
                      // Text(
                      //     '${masyarakatController.listMasyarakat.value[index].nama}',
                      //     style: TextStyle(color: Colors.black))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
