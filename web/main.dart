import 'dart:html';

void main() {
  querySelector('#heading').text = 'Simple Dart Web Application';
  querySelector('#output').text = 'Please use left, right, up and down..........';

  //add click event get value of the text box
  querySelector('#submit').onClick.listen(clickSubmitButton);

}

clickSubmitButton(e) {
  print("Yes");
  InputElement input = querySelector('#commands');
  String output = "";
  if(input.value == "left") {
    output = "You are going left";
  }else if(input.value == "right") {
    output = "You are going right";
  }else if(input.value == "up") {
    output = "You are going up";
  }else if(input.value == "down") {
    output = "You are going down";
  }else {
    output = "Please use left, right, up and down..........";
  }
  var outputHtml = "<div>${output }</div>";
  querySelector('#output').appendHtml(outputHtml);
}
