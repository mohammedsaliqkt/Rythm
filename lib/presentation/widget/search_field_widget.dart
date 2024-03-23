import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rhthemix/presentation/provider/search_provider/search_provider.dart';

class SearchField extends ConsumerWidget {
  final VoidCallback? onPressed;
  final TextEditingController? controller;

  const SearchField({super.key, this.onPressed, this.controller});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8 * 2),
      child: TextFormField(
        onChanged: (value) {
          ref.watch(searchProvider.notifier).songsearch(search: value);
        },
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              8 * 2,
            ),
          ),
          hintText: 'search',
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 8 * 3.5,
            vertical: 8 * 2,
          ),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.clear,
            ),
          ),
        ),
      ),
    );
  }
}
