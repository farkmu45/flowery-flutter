import 'package:flowery/src/data/flower_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flowers = ref.watch(getFlowersProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Text(
          'Flowery',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 24),
        ),
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        centerTitle: true,
      ),
      body: flowers.when(
        data: (flowers) {
          if (flowers.isEmpty) {
            return RefreshIndicator(
              color: Color(0xFF6A6CFF),
              backgroundColor: Colors.white,
              onRefresh: () async {
                ref.invalidate(getFlowersProvider);
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 200,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(32),
                            decoration: BoxDecoration(
                              color: const Color(
                                0xFF6A6CFF,
                              ).withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.local_florist_outlined,
                              size: 64,
                              color: Color(0xFF6A6CFF),
                            ),
                          ),
                          const SizedBox(height: 32),
                          Text(
                            'No flowers yet',
                            style: GoogleFonts.poppins(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Start building your beautiful\nflower collection',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.grey[600],
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Pull down to refresh',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(getFlowersProvider);
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: flowers.length + 1, // Add 1 for the header
              itemBuilder: (context, index) {
                // Add header item at the top
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Center(
                      child: Text(
                        'Pull down to refresh',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  );
                }

                final flower =
                    flowers[index - 1]; // Adjust index for the header
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () => context.push('/detail', extra: flower),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Hero(
                              tag: 'flower_${flower.name}',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  flower.picture,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Icon(
                                        Icons.local_florist,
                                        color: Colors.grey[400],
                                        size: 32,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    flower.name,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Added ${_formatDate(flower.createdAt)}',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(
                                  0xFF6A6CFF,
                                ).withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: const Color(0xFF6A6CFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 64, color: Colors.red),
                const SizedBox(height: 16),
                Text(
                  'Error loading flowers',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  error.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => ref.refresh(getFlowersProvider),
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
