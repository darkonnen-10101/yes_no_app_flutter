import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/enums/from_who.dart';

import '../../domain/entities/message.dart';
import '../../infraestructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJson(response.data);

    return yesNoModel.toMessageEntity();
  }
}
