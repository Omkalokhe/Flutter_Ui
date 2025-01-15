import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'gradient_background.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final GradientController _gradientController = GradientController();
  late AnimationController _breathingController;
  Timer? _timer;
  int _remainingSeconds = 0;
  bool _isRunning = false;
  int _selectedMinutes = 5;
  String _selectedMood = 'Calm';

  final List<int> _presetTimes = [1, 5, 10, 15, 20, 30];
  final Map<String, Map<String, dynamic>> _moodGradients = {
    'Calm': {
      'colors': [const Color(0xFF2193b0), const Color(0xFF6dd5ed)],
      'icon': Icons.self_improvement,
    },
    'Focus': {
      'colors': [const Color(0xFF11998e), const Color(0xFF38ef7d)],
      'icon': Icons.visibility,
    },
    'Relax': {
      'colors': [const Color(0xFF834d9b), const Color(0xFFd04ed6)],
      'icon': Icons.nature_people,
    },
    'Energy': {
      'colors': [const Color(0xFFff4e50), const Color(0xFFf9d423)],
      'icon': Icons.flash_on,
    },
  };

  @override
  void initState() {
    super.initState();
    _breathingController = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    );
    _startBreathingAnimation();
  }

  void _startBreathingAnimation() {
    _breathingController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _breathingController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _breathingController.forward();
      }
    });
    _breathingController.forward();
  }

  void _startTimer() {
    setState(() {
      _isRunning = true;
      _remainingSeconds = _selectedMinutes * 60;
    });

    _gradientController.startMeditationMode(_selectedMood);

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _stopTimer();
          _showCompletionDialog();
        }
      });
    });

    HapticFeedback.mediumImpact();
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _isRunning = false;
    });
    _gradientController.endMeditationMode();
    HapticFeedback.mediumImpact();
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white.withOpacity(0.95),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          '✨ Session Complete',
          style: TextStyle(color: Colors.black87),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/lotties/confetti.json',
              width: 100,
              repeat: false,
            ),
            const SizedBox(height: 20),
            Text(
              'You completed $_selectedMinutes minutes in $_selectedMood mode!',
              style: const TextStyle(color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              '"Every breath is a fresh beginning"',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  Widget _buildMoodIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.white,
      size: 20,
    );
  }

  Widget _buildMoodChip(String mood) {
    return ChoiceChip(
      avatar: _buildMoodIcon(_moodGradients[mood]!['icon']),
      label: Text(mood),
      selected: _selectedMood == mood,
      onSelected: (selected) {
        if (selected) {
          setState(() => _selectedMood = mood);
          _gradientController.updateMood(mood);
          HapticFeedback.selectionClick();
        }
      },
      backgroundColor: Colors.white.withOpacity(0.15),
      selectedColor: Colors.white.withOpacity(0.3),
      labelStyle: TextStyle(
        color: Colors.white,
        fontWeight: _selectedMood == mood ? FontWeight.bold : FontWeight.normal,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: _selectedMood == mood ? 4 : 0,
      shadowColor: Colors.black45,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.self_improvement,
              color: Colors.white,
              size: 32,
            ),
            const SizedBox(width: 8),
            Text(
              'Timer Clock',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: GradientBackground(
        controller: _gradientController,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                if (!_isRunning)
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: Container(
                      key: ValueKey(_isRunning),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Choose Your Mood',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            alignment: WrapAlignment.center,
                            children: _moodGradients.keys
                                .map(_buildMoodChip)
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                const Spacer(),
                AnimatedBuilder(
                  animation: _breathingController,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _isRunning
                          ? 0.9 + (_breathingController.value * 0.2)
                          : 1.0,
                      child: Container(
                        padding: const EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.15),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.1),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              _isRunning
                                  ? _formatTime(_remainingSeconds)
                                  : '$_selectedMinutes:00',
                              style: GoogleFonts.poppins(
                                fontSize: 48,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            if (_isRunning) ...[
                              const SizedBox(height: 8),
                              Text(
                                _selectedMood,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const Spacer(),
                if (!_isRunning)
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: Container(
                      key: ValueKey(_isRunning),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Session Duration',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            alignment: WrapAlignment.center,
                            children: _presetTimes.map((time) {
                              return ChoiceChip(
                                label: Text('$time min'),
                                selected: _selectedMinutes == time,
                                onSelected: (selected) {
                                  if (selected) {
                                    setState(() => _selectedMinutes = time);
                                    HapticFeedback.selectionClick();
                                  }
                                },
                                backgroundColor: Colors.white.withOpacity(0.15),
                                selectedColor: Colors.white.withOpacity(0.3),
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: _selectedMinutes == time
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                elevation: _selectedMinutes == time ? 4 : 0,
                                shadowColor: Colors.black45,
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _isRunning ? _stopTimer : _startTimer,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.2),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: Colors.white.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                      elevation: 5,
                      shadowColor: Colors.black26,
                      animationDuration: const Duration(milliseconds: 300),
                    ).copyWith(
                      // Adding a scaling animation on press
                      elevation: WidgetStateProperty.resolveWith<double>(
                        (states) {
                          if (states.contains(WidgetState.pressed)) {
                            return 10;
                          }
                          return 5;
                        },
                      ),
                    ),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (child, animation) => ScaleTransition(
                        scale: animation,
                        child: child,
                      ),
                      child: Row(
                        key: ValueKey(_isRunning),
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            _isRunning ? Icons.stop : Icons.play_arrow,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _isRunning ? 'End Session' : 'Begin Session',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
