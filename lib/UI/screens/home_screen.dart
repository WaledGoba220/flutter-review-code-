import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:review/UI/screens/example_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double val = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // app bar properties
        appBar: AppBar(
          title: const Text("Home Screen"),
          // leading: const Icon(Icons.home),
          elevation: 0.0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shop)),
          ],
          backgroundColor: Colors.orange,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),

        //drawer
        drawerScrimColor: Colors.red.withOpacity(0.2),
        drawer: Drawer(
          child: Column(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text("Waled"),
                accountEmail: Text("www@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text("w"),
                ),
              ),
              ListTile(
                title: Text("Home"),
                subtitle: Text("Home Screen"),
                leading: Icon(Icons.home),
              ),
            ],
          ),
        ),

        // Body Of Scaffold
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  "Waled",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Divider(),
              Container(
                width: 120,
                height: 60,
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Hello !",
                  textAlign: TextAlign.center,
                ),
              ),
              const Divider(),
              const Image(
                image: NetworkImage(
                    "https://www.lotuscars.com/content/themes/lotus-consumer/assets/images/eletre/stills/P000198_S004_Eletre_PA_Ext_R34_Comp08_TH_FinalArt.jpg"),
              ),
              Container(
                width: 420,
                height: 380,
                child: const Image(
                  image: AssetImage("assets/images/xxx.jpg"),
                ),
              ),
              const Divider(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.black, width: 4),
                ),
                child: const Text(
                  "Waled Saied",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const Divider(
                color: Colors.red,
                height: 2,
                thickness: 3,
              ),
              const Icon(
                Icons.access_time_filled_sharp,
                size: 50,
                color: Colors.blue,
              ),
              Container(
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/xxx.jpg"),
                  child: Text("A"),
                  backgroundColor: Colors.red,
                  radius: 40,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              Center(child: TextButton(onPressed: () {
             //   Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleOne()));
                Navigator.pushNamed(context, "ex");
                showModalBottomSheet(context: context, builder: (context){
                  return Container(
                    child: const Text("Show Model Bottom Sheet"),
                  );
                });
             //    Navigator.pushReplacementNamed(context, "ex");
              }, child: const Text("Navigate"))),

              Slider(value: val,
                  min: 0,
                  max: 100,
                  activeColor: Colors.red,
                  inactiveColor: Colors.black,
                  onChanged: (value){
                setState(() {
                  val = value;
                });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
