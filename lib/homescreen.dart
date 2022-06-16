import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageTitles = ["Home", "Settings"];
  int _selectedItemIndex = 0;

  void _setSelectedItemIndex(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  void _switchThemeMode(){
    AdaptiveTheme.of(context).toggleThemeMode();
  }



  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;
  void _changeFabLocation(){
    if(_fabLocation == FloatingActionButtonLocation.centerDocked){
        setState(() {
          _fabLocation = FloatingActionButtonLocation.endFloat;
        });
    } else {
      setState(() {
        _fabLocation = FloatingActionButtonLocation.centerDocked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                ),
                child: Image.asset('assets/images/flutter_logo.png'),
              ),
              ListTile(
                title: const Text('Home'),
                leading: const Icon(Icons.home),

                onTap: () {
                  _setSelectedItemIndex(0);
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                title: const Text('Settings'),
                leading: const Icon(Icons.settings),
                onTap: () {
                  _setSelectedItemIndex(1);
                  Navigator.pop(context);
                },
              ),
            ],
          )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              pageTitles[_selectedItemIndex],
              style: const TextStyle(
                fontSize: 100
              ),
            ),
            // const SizedBox(height: 16,),
            // ElevatedButton(
            //   onPressed: _switchThemeMode,
            //   child: const Text("Change theme mode"),
            // )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: Theme.of(context).textTheme.bodyLarge?.fontSize ?? 20,
        unselectedFontSize: Theme.of(context).textTheme.bodySmall?.fontSize ?? 16,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedItemIndex,
        onTap: _setSelectedItemIndex,
      ),

      /** USED TO SHOW BOTTOM APP BAR **/
      // floatingActionButtonLocation: _fabLocation,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _changeFabLocation,
      //   tooltip: 'Increment',
      //   elevation: 2.0,
      //   child: const Icon(Icons.add),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   child: Row(
      //     children: const [
      //       IconButton(
      //         tooltip: 'Navigation',
      //         icon: Icon(
      //           Icons.menu,
      //           color: Colors.white,
      //         ),
      //         onPressed: null,
      //       ),
      //       IconButton(
      //         tooltip: 'Favorite',
      //         icon: Icon(
      //             Icons.favorite,
      //             color: Colors.white,
      //         ),
      //         onPressed: null,
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
