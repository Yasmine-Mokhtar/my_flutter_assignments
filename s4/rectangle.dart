class Rectangle {
  double _width;
  double _height;
  Rectangle({required double height, required double width})
      : _height = height,
        _width = width;

  set width(double width){
    if(width > 0){
      _width = width;
    }
  }

  double get width => _width;

  set height(double height){
    if(height > 0){
      _height = height;
    }
  }

  double get height => _height;

  double get area => _height * _width;
}
