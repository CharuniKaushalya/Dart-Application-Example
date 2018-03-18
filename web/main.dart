import 'dart:html';

void main() {
  querySelector('#heading').text = 'Simple Dart Web Application';
  querySelector('#output').text = 'Some text.....';

  //add click event get value of the text box
  querySelector('#submit').onClick.listen(clickSubmitButton);

}

clickSubmitButton(e) {
  print("Yes");
  InputElement input = querySelector('#commands');
  querySelector('#output').appendHtml("<div>${input.value}</div>");
}
