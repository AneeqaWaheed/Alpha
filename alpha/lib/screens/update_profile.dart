import 'package:alpha/widgets/CustomTheme.dart';
import 'package:alpha/widgets/profileDrawer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class ProfileUpdate extends StatefulWidget {
  // Replace null with the actual user data type
  get user => null;

  const ProfileUpdate({Key? key}) : super(key: key);

  @override
  State<ProfileUpdate> createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  @override
  Widget build(BuildContext context) {
    return CustomTheme(
      title: 'Update Profile',
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_comment_rounded),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
          child: Container(
            margin: EdgeInsets.only(top: mq.height * 0.1),
            child: Column(
              children: [
                if (widget.user != null && widget.user.image != null)
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(mq.height * 0.1),
                        child: CachedNetworkImage(
                          width: mq.height * 0.55,
                          height: mq.height * 0.55,
                          imageUrl: widget.user.image,
                          errorWidget: (context, url, error) =>
                              const CircleAvatar(
                            child: Icon(Icons.person_2),
                          ),
                        ),
                      ),
                      // edit image button
                      Positioned(
                        child: MaterialButton(
                          elevation: 1,
                          onPressed: () {},
                          shape: const CircleBorder(),
                          color: Colors.white,
                          child:
                              const Icon(Icons.edit, color: Color(0xFF7E22CE)),
                        ),
                      ),
                    ],
                  ),
                if (widget.user == null || widget.user.image == null)
                  // Placeholder or default avatar when user or user image is null
                  CircleAvatar(child: Icon(Icons.person_2)),
                SizedBox(height: mq.height * 0.05),
                TextFormField(
                  initialValue: widget.user?.name ?? '',
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.person, color: Color(0xFF7E22CE)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'eg. Aneeqa Waheed',
                    label: const Text('Name'),
                  ),
                ),
                SizedBox(height: mq.height * 0.05),
                TextFormField(
                  initialValue: widget.user?.number ?? '',
                  keyboardType: TextInputType.phone,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.phone, color: Color(0xFF7E22CE)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'eg. 03455885564',
                    label: const Text('Phone Number'),
                  ),
                ),
                // Update Profile Button
                SizedBox(height: mq.height * 0.05),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    minimumSize: Size(mq.width * 0.5, mq.height * 0.06),
                  ),
                  onPressed: () {
                    _showbottomsheet();
                  },
                  icon: const Icon(Icons.edit, size: 28),
                  label: const Text(
                    'Update',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: ProfileDrawer(userName: "Aneeqa Waheed"),
      ),
    );
  }

  void _showbottomsheet() {
    showBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (_) {
          return ListView(
            shrinkWrap: true,
            padding:
                EdgeInsets.only(top: mq.height * .03, bottom: mq.height * .05),
            children: [
              Text(
                'Pick Profile Picture',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          fixedSize: Size(mq.width * .3, mq.height * .15)),
                      onPressed: () {},
                      child: Image.asset('images/add-image.png')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          fixedSize: Size(mq.width * .3, mq.height * .15)),
                      onPressed: () {},
                      child: Image.asset('images/camera.png')),
                ],
              ),
            ],
          );
        });
  }
}
