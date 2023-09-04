import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final randomizer = Random();
const List<String> alienURL  =[
  'https://static.wikia.nocookie.net/ben10/images/1/14/Four_Arms_Forward.png/revision/latest/top-crop/width/200/height/150?cb=20210407160718',
  'https://static.wikia.nocookie.net/ben10/images/7/70/Heatblast_os.png/revision/latest/top-crop/width/200/height/150?cb=20230814093452',
  'https://static.wikia.nocookie.net/ben10/images/7/75/Diamondhead_B10.PNG/revision/latest/top-crop/width/200/height/150?cb=20210220164557',
  'https://static.wikia.nocookie.net/ben10/images/7/79/OS_XLR8_with_visor.png/revision/latest/top-crop/width/200/height/150?cb=20210523135606',
  'https://static.wikia.nocookie.net/ben10/images/d/d0/Swampfire_uaf_official.png/revision/latest/top-crop/width/200/height/150?cb=20141129034947',
  'https://static.wikia.nocookie.net/ben10/images/a/a3/GhostfreakPose2.png/revision/latest/top-crop/width/200/height/150?cb=20210313173053',
  'https://static.wikia.nocookie.net/ben10/images/9/9c/Waybig_Model.png/revision/latest/top-crop/width/200/height/150?cb=20200510104325',
  'https://static.wikia.nocookie.net/ben10/images/6/62/Upgrade_Model.png/revision/latest/top-crop/width/200/height/150?cb=20200511092500',
];
const List<String> alienName = [
  'Four Arms',
  'Heatblast',
  'DiamondHead',
  'XLR8',
  'Swampfire',
  'Ghostfreak',
  'Way Big',
  'Upgrade',
];
class MainScreen extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
  return _MainScreenState();
  }
}
class _MainScreenState extends State<MainScreen>{
  var indx = 0;
  void press(){
    setState(() {
      indx = randomizer.nextInt(8);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.greenAccent),
                borderRadius: BorderRadius.circular(200),
              ),
              child: Image.network(alienURL[indx]
              ,),
            ),
            const SizedBox(height: 50,),
            Text(alienName[indx],
            style: GoogleFonts.openSans(
              color: Colors.greenAccent,
              fontSize: 27,
              fontWeight: FontWeight.w700,
            )),
            const SizedBox(height: 100),
            ElevatedButton(onPressed: press, style: ElevatedButton.styleFrom(
              side: const BorderSide(
              width: 2.7,
              color: Colors.orangeAccent,
            ),
              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 34),
            ),
            child:
            Text("Press",
                style: GoogleFonts.openSans(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )
            ),)
          ],
        ),
      ),
    );
  }
}