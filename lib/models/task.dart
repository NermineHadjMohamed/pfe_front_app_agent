import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
abstract class Task with _$Task {
  factory Task({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'productId') required String productId, // Reference to Product
    @JsonKey(name: 'roleId') required String roleId,       // Reference to Role
    @JsonKey(name: 'agentId') required String agentId,     // Reference to Agent
    @JsonKey(name: 'status') required String status,       // Task status (started or finished)
    @JsonKey(name: 'startTime') required DateTime startTime, // Start time of the task
    @JsonKey(name: 'finishTime') DateTime? finishTime,      // Finish time of the task (nullable)
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
