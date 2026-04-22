import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  // --- Developer Info ---
  static const String _devName = "Manav Bavaliya";
  static const String _devTitle =
      "Flutter Developer | Android Devlopment & Website Devlopment | Freelancer";
  static const String _devBio =
      "Computer Engineering student at RK University. I build tools that solve real-world problems. "
      "Currently mastering the flutter devlopment to become a full-stack expert.";

  // --- Project Info ---
  static const String _appName = "Attendance Manager";
  static const String _appDesc =
      "Your complete offline classroom assistant: Track attendance, visualize data, and share reports in seconds"
      "—all built with Flutter and SQLite for seamless performance.";

  static const String _mobileNumber = "+919106910204";

  static const String _email = "mbavaliya621@rku.ac.in";

  static const String _linkedinUrl =
      "https://www.linkedin.com/in/manav-bavaliya-26610226b/";
  static const String _instagramUrl =
      "https://instagram.com/manav___prajapati__";

  // --- Launchers ---
  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    try {
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw 'Could not launch $urlString';
      }
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: _email,
      query: 'subject=Attendance App Feedback&body=Hello Manav,',
    );
    try {
      await launchUrl(emailLaunchUri);
    } catch (e) {
      debugPrint("Error launching email");
    }
  }

  Future<void> _launchPhone() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: _mobileNumber);
    try {
      await launchUrl(phoneUri);
    } catch (e) {
      debugPrint("Error launching phone");
    }
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final gradientColors = [primaryColor, primaryColor.withValues(alpha: 0.7)];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            // --- HEADER ---
            _buildHeader(context, gradientColors),

            const SizedBox(height: 60),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // --- IDENTITY ---
                  Text(
                    _devName,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _devTitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 24),
                  _buildBioCard(),

                  const SizedBox(height: 30),
                  const SizedBox(height: 30),

                  // --- SKILLS SECTION (Kept MERN Stack) ---
                  _buildSectionTitle("Tech Stack & Skills"),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.center,
                    children: const [
                      _TechChip(label: "Flutter", color: Colors.blue),
                      _TechChip(label: "Dart", color: Colors.lightBlueAccent),
                      _TechChip(label: "SQLite", color: Colors.indigo),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.center,
                    children: [
                      _TechChip(
                        label: "Android Devlopment",
                        color: Colors.green.shade700,
                      ),

                      _TechChip(label: "Firebase", color: Colors.orangeAccent),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // --- SOCIAL LINKS ---
                  const Text(
                    "Contact Me",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 16),
                      _SocialButton(
                        icon: FontAwesomeIcons.linkedin,
                        color: const Color(0xFF0077B5),
                        onTap: () => _launchUrl(_linkedinUrl),
                      ),
                      const SizedBox(width: 16),
                      _SocialButton(
                        icon: FontAwesomeIcons.instagram,
                        color: const Color(0xFFE4405F),
                        onTap: () => _launchUrl(_instagramUrl),
                      ),
                      const SizedBox(width: 16),
                      _SocialButton(
                        icon: Icons.call,
                        color: Colors.green,
                        onTap: _launchPhone,
                      ),
                      const SizedBox(width: 16),
                      _SocialButton(
                        icon: Icons.email,
                        color: const Color(0xFFDB4437),
                        onTap: _launchEmail,
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),

                  // --- FOOTER ---
                  Opacity(
                    opacity: 0.6,
                    child: Column(
                      children: const [
                        Text(
                          "Designed by Manav Bavaliya",
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "RK University (Computer Dept)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- WIDGETS ---

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, List<Color> gradientColors) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: _HeaderClipper(),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradientColors,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -50,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.15),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: const CircleAvatar(
              radius: 65,
              backgroundColor: Colors.white,
              // Ensure this image exists in your assets folder!
              backgroundImage: AssetImage('assets/profile.jpeg'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBioCard() {
    return Text(
      _devBio,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15, height: 1.6, color: Colors.grey[800]),
    );
  }

  Widget _buildTechTile(IconData icon, String title, String subtitle) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: Colors.grey[800], size: 24),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 12, height: 1.4),
      ),
    );
  }
}

// --- Custom Clipper ---
class _HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// --- Components ---

class _TechChip extends StatelessWidget {
  final String label;
  final Color color;
  const _TechChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        // ✅ Fixed Deprecation
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        label,
        // ✅ Fixed Deprecation (removed redundant withOpacity)
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _SocialButton({
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: FaIcon(icon, color: color, size: 22),
      ),
    );
  }
}
