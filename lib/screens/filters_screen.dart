import 'package:flutter/material.dart';

import '../widgets/main_screen_drawer.dart';

//This screen provides the code in progress for the filters screen.
// Playing with this function will cause the app to crash.

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isMeditate = false;
  bool _isStudy = false;
  bool _isSleep = false;
  bool _isWorkout = false;

  @override
  initState() {
    _isMeditate = widget.currentFilters['meditate'];
    _isStudy = widget.currentFilters['study'];
    _isSleep = widget.currentFilters['sleep'];
    _isWorkout = widget.currentFilters['workout'];
    super.initState();
  }

  Widget _buildSwitchListTile(
      String title,
      String description,
      bool currentValue,
      Function updateValue,
      ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(
        description,
      ),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Filters'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'meditate': _isMeditate,
                'study': _isStudy,
                'sleep': _isSleep,
                'workout': _isWorkout,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: MainScreenDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your audio selection.',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Meditate',
                  'Only include meditation audio.',
                  _isMeditate,
                      (newValue) {
                    setState(
                          () {
                        _isMeditate = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Study',
                  'Only include study audio.',
                  _isStudy,
                      (newValue) {
                    setState(
                          () {
                        _isStudy = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Sleep',
                  'Only include sleep audio.',
                  _isSleep,
                      (newValue) {
                    setState(
                          () {
                        _isSleep = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Workout',
                  'Only include workout audio.',
                  _isWorkout,
                      (newValue) {
                    setState(
                          () {
                        _isWorkout = newValue;
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
