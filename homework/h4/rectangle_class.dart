class Rectangle{
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  set width (double width) => _width = width;
  double get width => _width;

  set height (double height) => _height = height;
  double get height => _height;

double get area => _height * _width;
}