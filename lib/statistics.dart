/// Statistics entry for an FFmpeg execute session.
class Statistics {
  int _sessionId;
  int _videoFrameNumber;
  double _videoFps;
  double _videoQuality;
  int _size;
  int _time;
  double _bitrate;
  double _speed;

  Statistics(
    this._sessionId,
    this._videoFrameNumber,
    this._videoFps,
    this._videoQuality,
    this._size,
    dynamic time, // Puede ser int o double
    this._bitrate,
    this._speed,
  ) : _time = (time is int)
            ? time
            : (time is double)
                ? time.toInt()
                : throw ArgumentError('El tipo de time debe ser int o double');

  int getSessionId() => _sessionId;

  void setSessionId(int sessionId) {
    _sessionId = sessionId;
  }

  int getVideoFrameNumber() => _videoFrameNumber;

  void setVideoFrameNumber(int videoFrameNumber) {
    _videoFrameNumber = videoFrameNumber;
  }

  double getVideoFps() => _videoFps;

  void setVideoFps(double videoFps) {
    _videoFps = videoFps;
  }

  double getVideoQuality() => _videoQuality;

  void setVideoQuality(double videoQuality) {
    _videoQuality = videoQuality;
  }

  int getSize() => _size;

  void setSize(int size) {
    _size = size;
  }

  int getTime() => _time;

  void setTime(dynamic time) {
    if (time is int) {
      _time = time;
    } else if (time is double) {
      _time = time.toInt();
    } else {
      throw ArgumentError('El tipo de time debe ser int o double');
    }
  }

  double getBitrate() => _bitrate;

  void setBitrate(double bitrate) {
    _bitrate = bitrate;
  }

  double getSpeed() => _speed;

  void setSpeed(double speed) {
    _speed = speed;
  }
}
