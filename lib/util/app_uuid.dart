import 'package:uuid/uuid.dart';

final _uuid = Uuid();

String newRequestId() => _uuid.v4();