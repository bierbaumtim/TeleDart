/// TeleDart - Telegram Bot API for Dart
/// Copyright (C) 2019  Dino PH Leung
///
/// This program is free software: you can redistribute it and/or modify
/// it under the terms of the GNU General Public License as published by
/// the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU General Public License for more details.
///
/// You should have received a copy of the GNU General Public License
/// along with this program.  If not, see <https://www.gnu.org/licenses/>.

part of '../model.dart';

/// This object represents a video file.
///
/// https://core.telegram.org/bots/api#video
@JsonSerializable()
class Video {
  String? file_id;
  String? file_unique_id;
  int? width;
  int? height;
  int? duration;
  PhotoSize? thumb;
  String? file_name;
  String? mime_type;
  int? file_size;

  Video({
    this.file_id,
    this.file_unique_id,
    this.width,
    this.height,
    this.duration,
    this.thumb,
    this.file_name,
    this.mime_type,
    this.file_size,
  });

  @JsonKey(ignore: true)
  Duration get duration_ => TimeHelper.toDuration(duration!);
  set duration_(Duration duration) =>
      this.duration = TimeHelper.toSeconds(duration);

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
