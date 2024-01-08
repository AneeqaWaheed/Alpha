import 'package:alpha/widgets/CustomTheme.dart';
import 'package:alpha/widgets/profileDrawer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.dehaze),
              );
            },
          ),
          title: const Text('Profile Screen'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
          child: Column(
            children: [
              if (widget.user != null && widget.user.image != null)
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(mq.height * .1),
                      child: CachedNetworkImage(
                        width: mq.height * .055,
                        height: mq.height * .055,
                        imageUrl: widget.user.image,
                        errorWidget: (context, url, error) =>
                            const CircleAvatar(
                          child: Icon(CupertinoIcons.person_2),
                        ),
                      ),
                    ),
                    //edit image button

                    Positioned(
                        child: MaterialButton(
                      elevation: 1,
                      onPressed: () {},
                      shape: const CircleBorder(),
                      color: Colors.white,
                      child: const Icon(Icons.edit, color: Color(0xFF7E22CE)),
                    ))
                  ],
                ),
              if (widget.user == null || widget.user.image == null)
                // Placeholder or default avatar when user or user image is null
                CircleAvatar(child: Icon(CupertinoIcons.person_2)),
              SizedBox(height: mq.height * .05),
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
              SizedBox(height: mq.height * .05),
              TextFormField(
                initialValue: widget.user?.number ?? '',
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone, color: Color(0xFF7E22CE)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'eg. 03455885564',
                  label: const Text('Phone Number'),
                ),
              ),
              //Update Profile Button
              SizedBox(height: mq.height * .05),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    minimumSize: Size(mq.width * .5, mq.height * .06)),
                onPressed: () {},
                icon: const Icon(Icons.edit, size: 28),
                label: const Text(
                  'Update',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        drawer: ProfileDrawer(userName: "Aneeqa Waheed"),
      ),
    );
  }
}
