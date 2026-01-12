// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countdown_edit_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CountdownEdit)
final countdownEditProvider = CountdownEditProvider._();

final class CountdownEditProvider
    extends $NotifierProvider<CountdownEdit, dynamic> {
  CountdownEditProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'countdownEditProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$countdownEditHash();

  @$internal
  @override
  CountdownEdit create() => CountdownEdit();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$countdownEditHash() => r'30d1e4143ac650a6fc2644ba0b35dc017f7fb6d0';

abstract class _$CountdownEdit extends $Notifier<dynamic> {
  dynamic build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<dynamic, dynamic>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<dynamic, dynamic>,
              dynamic,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
