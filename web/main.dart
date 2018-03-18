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
  switch (input.value){
    case "left" :
        output = "You are going left";
        break;
    case "right" :
        output = "You are going right";
        break;
    case "up" :
        output = "You are going up";
        break;
   case "down" :
        output = "You are going down";
        break;
  default:
        output = "Please use left, right, up and down..........";
  }
  var outputHtml = "<div>${output }</div>";
  querySelector('#output').appendHtml(outputHtml);
}
