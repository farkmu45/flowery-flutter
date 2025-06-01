import 'package:flowery/src/domain/flower.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends ConsumerWidget {
  final Flower flower;

  const Detail(this.flower, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            foregroundColor: Colors.white,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'flower_${flower.name}',
                child: Image.network(
                  flower.picture,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[100],
                      child: Icon(
                        Icons.local_florist,
                        size: 64,
                        color: Colors.grey[400],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    flower.name,
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF6A6CFF).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Added ${_formatDate(flower.createdAt)}',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF6A6CFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  _buildSection(
                    context,
                    'Character',
                    flower.character,
                    Icons.psychology,
                  ),
                  const SizedBox(height: 24),
                  _buildSection(
                    context,
                    'Meaning',
                    flower.meaning,
                    Icons.favorite,
                  ),
                  const SizedBox(height: 24),
                  _buildSection(
                    context,
                    'Details',
                    flower.details,
                    Icons.info_outline,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    String content,
    IconData icon,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF6A6CFF).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: const Color(0xFF6A6CFF), size: 20),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            content,
            style: GoogleFonts.poppins(
              fontSize: 15,
              height: 1.6,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
