// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CountdownList)
final countdownListProvider = CountdownListProvider._();

final class CountdownListProvider
    extends $NotifierProvider<CountdownList, dynamic> {
  CountdownListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'countdownListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$countdownListHash();

  @$internal
  @override
  CountdownList create() => CountdownList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$countdownListHash() => r'b7e322cee9278ff1916994d4ae77373395afd8cf';

abstract class _$CountdownList extends $Notifier<dynamic> {
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
