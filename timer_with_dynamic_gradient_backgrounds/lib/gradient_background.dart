import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class GradientController {
  _GradientBackgroundState? _state;

  void bind(_GradientBackgroundState? state) {
    _state = state;
  }

  void startMeditationMode(String mood) {
    _state?._startMeditationMode(mood);
  }

  void endMeditationMode() {
    _state?._endMeditationMode();
  }

  void updateMood(String mood) {
    _state?._updateMood(mood);
  }

  void dispose() {
    _state = null;
  }
}

class GradientBackground extends StatefulWidget {
  final Widget child;
  final GradientController controller;

  const GradientBackground({
    super.key,
    required this.child,
    required this.controller,
  });

  @override
  _GradientBackgroundState createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;

  final Map<String, List<List<Color>>> _moodGradients = {
    'Calm': [
      [const Color(0xFF2193b0), const Color(0xFF6dd5ed)],
      [const Color(0xFF4CA1AF), const Color(0xFF2C3E50)],
    ],
    'Focus': [
      [const Color(0xFF11998e), const Color(0xFF38ef7d)],
      [const Color(0xFF0F2027), const Color(0xFF203A43)],
    ],
    'Relax': [
      [const Color(0xFF834d9b), const Color(0xFFd04ed6)],
      [const Color.fromARGB(255, 241, 47, 108), const Color(0xFF753a88)],
    ],
    'Energy': [
      [const Color(0xFFff4e50), const Color(0xFFf9d423)],
      [const Color(0xFFff512f), const Color(0xFFdd2476)],
    ],
  };

  String _currentMood = 'Calm';
  bool _isMeditating = false;
  int _currentGradientIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.bind(this);
    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _setAnimations();
    _animationController.forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _currentGradientIndex =
            (_currentGradientIndex + 1) % _moodGradients[_currentMood]!.length;
        _setAnimations();
        _animationController.forward(from: 0.0);
      }
    });
  }

  void _setAnimations() {
    final gradients = _moodGradients[_currentMood]!;
    final nextIndex = (_currentGradientIndex + 1) % gradients.length;

    _colorAnimation1 = ColorTween(
      begin: gradients[_currentGradientIndex][0],
      end: gradients[nextIndex][0],
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _colorAnimation2 = ColorTween(
      begin: gradients[_currentGradientIndex][1],
      end: gradients[nextIndex][1],
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  void _startMeditationMode(String mood) {
    setState(() {
      _isMeditating = true;
      _currentMood = mood;
      _currentGradientIndex = 0;
    });
    _animationController.duration = const Duration(seconds: 8);
    _setAnimations();
    _animationController.forward(from: 0.0);
  }

  void _endMeditationMode() {
    setState(() {
      _isMeditating = false;
      _currentMood = 'Calm';
      _currentGradientIndex = 0;
    });
    _animationController.duration = const Duration(seconds: 5);
    _setAnimations();
    _animationController.forward(from: 0.0);
  }

  void _updateMood(String mood) {
    setState(() {
      _currentMood = mood;
      _currentGradientIndex = 0;
    });
    _setAnimations();
    _animationController.forward(from: 0.0);
  }

  @override
  void dispose() {
    widget.controller.bind(null);
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                _colorAnimation1.value ?? _moodGradients[_currentMood]![0][0],
                _colorAnimation2.value ?? _moodGradients[_currentMood]![0][1],
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.0, 1.0],
            ),
          ),
          child: BackdropFilter(
            filter: _isMeditating
                ? ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0)
                : ui.ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
            child: child,
          ),
        );
      },
      child: widget.child,
    );
  }
}
