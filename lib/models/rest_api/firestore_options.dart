import 'package:islam_app/utils/mixins.dart';

class FireStoreOptions<T> {
  FireStoreOptions(
      {this.collectionName, this.docName, this.fromModel, this.toModel});
  final String? collectionName;
  final String? docName;
  final Model<dynamic>? fromModel;
  final T Function(dynamic)? toModel;
}
