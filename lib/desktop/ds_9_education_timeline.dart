import 'package:flutter/material.dart';

class EducationCard extends StatelessWidget {
  final String degree;
  final String institution;
  final String duration;
  final String score;
  final List<String> subjects;

  const EducationCard({
    super.key,
    required this.degree,
    required this.institution,
    required this.duration,
    required this.score,
    required this.subjects,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(degree,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(institution, style: const TextStyle(color: Colors.blue)),
          const SizedBox(height: 8),
          Text(duration, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 4),
          Text(score, style: const TextStyle(fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: subjects
                .map((subject) => Chip(
                      label: Text(subject),
                      backgroundColor: Colors.blue.shade50,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
// Import the card widget here

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: const Text(
            "Education",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Timeline vertical line + dots
            Column(
              children: [
                const Icon(Icons.school, color: Colors.blue, size: 28),
                Container(
                  width: 2,
                  height: 80,
                  color: Colors.blue,
                ),
                const Icon(Icons.school, color: Colors.blue, size: 28),
              ],
            ),
            const SizedBox(width: 12),

            // Education Cards
            Expanded(
              child: Column(
                children: const [
                  EducationCard(
                    degree: 'B.E. Computer Engineering',
                    institution:
                        "Vidyavardhini’s College of Engineering & Technology, Vasai",
                    duration: "August 2022 – Expected June 2026",
                    score: "Current CGPA: 9.31/10",
                    subjects: [
                      'Object-Oriented Programming',
                      'Databases',
                      'Data Structures and Algorithms',
                    ],
                  ),
                  EducationCard(
                    degree: '12th Grade (Board with Computer Science)',
                    institution: "Thomas Baptista Junior College, Vasai",
                    duration: "August 2020 – June 2022",
                    score: "Percentage: 76.00%",
                    subjects: [
                      'Mathematics',
                      'Computer Science',
                      'C++ Programming',
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
