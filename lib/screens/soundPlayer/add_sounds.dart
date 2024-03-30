import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/widgits/add_sound_widgit.dart';

class AddSoundsScreen extends StatefulWidget {
  const AddSoundsScreen({super.key});

  @override
  State<AddSoundsScreen> createState() => _AddSoundsScreenState();
}

class _AddSoundsScreenState extends State<AddSoundsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAEDE0),
      appBar: AppBar(
        title: Row(
          children: [
            Center(
              child: Text(
                "Add Sounds",
                style: GoogleFonts.poppins(color: Color(0xff8398F3)),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image(
                      color: const Color(0xff8398F3),
                      image: AssetImage('assets/icons/cancel.png')),
                ),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFAEDE0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nature",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3), fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: false,
                      icon: "rain.png",
                    ),
                    AddSoundWidgit(
                      title: "Distant Thunder",
                      premium: false,
                      icon: "thunder.png",
                    ),
                    AddSoundWidgit(
                      title: "Window Patter",
                      premium: false,
                      icon: "window.png",
                    ),
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: false,
                      icon: "rain.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: true,
                      icon: "rain.png",
                    ),
                    AddSoundWidgit(
                      title: "Distant Thunder",
                      premium: true,
                      icon: "thunder.png",
                    ),
                    AddSoundWidgit(
                      title: "Window Patter",
                      premium: true,
                      icon: "window.png",
                    ),
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: false,
                      icon: "rain.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: false,
                      icon: "rain.png",
                    ),
                    AddSoundWidgit(
                      title: "Distant Thunder",
                      premium: false,
                      icon: "thunder.png",
                    ),
                    AddSoundWidgit(
                      title: "Window Patter",
                      premium: false,
                      icon: "window.png",
                    ),
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: true,
                      icon: "rain.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: true,
                      icon: "rain.png",
                    ),
                    AddSoundWidgit(
                      title: "Distant Thunder",
                      premium: true,
                      icon: "thunder.png",
                    ),
                    AddSoundWidgit(
                      title: "Window Patter",
                      premium: true,
                      icon: "window.png",
                    ),
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: false,
                      icon: "rain.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Musical",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3), fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: true,
                      icon: "rain.png",
                    ),
                    AddSoundWidgit(
                      title: "Distant Thunder",
                      premium: false,
                      icon: "thunder.png",
                    ),
                    AddSoundWidgit(
                      title: "Window Patter",
                      premium: false,
                      icon: "window.png",
                    ),
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: true,
                      icon: "rain.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Binaural",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3), fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: false,
                      icon: "rain.png",
                    ),
                    AddSoundWidgit(
                      title: "Distant Thunder",
                      premium: false,
                      icon: "thunder.png",
                    ),
                    AddSoundWidgit(
                      title: "Window Patter",
                      premium: false,
                      icon: "window.png",
                    ),
                    AddSoundWidgit(
                      title: "Light Rain",
                      premium: false,
                      icon: "rain.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
