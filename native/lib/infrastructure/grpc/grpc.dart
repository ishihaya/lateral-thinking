
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';
import 'package:lateral_thinking/env.dart';

final grpcClientProvider = Provider<ClientChannel>((ref) {
  return ClientChannel(
    EnvVars.apiURL,
    port: 443,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
});