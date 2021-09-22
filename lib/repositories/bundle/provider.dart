import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'bundle_repository.dart';

final bundleRepositoryProvider = Provider<BundleRepository>((ref) {
  return BundleRepositoryImpl(rootBundle);
});
