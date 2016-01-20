import 'dart:math';
import 'package:angular2/angular2.dart';
import 'package:angular2/bootstrap.dart';

final MESSAGES = [
  'Hello World',
  'Hola Mundo',
  'ਸਤਿ ਸ੍ਰੀ ਅਕਾਲ ਦੁਨਿਆ',
  'こんにちは世界',
  '你好世界',
  'Përshendetje Botë',
  'مرحبا بالعالم',
  'Բարեւ, աշխարհ',
  'হ্যালো দুনিয়া',
  'Saluton mondo',
  'გამარჯობა მსოფლიო',
];


@Component(
  selector: 'hello',
  template: '''
  <p><button (click)='handleClick()'>Click me</button></p>
  <p [ngStyle]="{'margin': '0', 'font-size': getFontSize()}">{{message}}</p>
  '''
)
class HelloWorldComponent {
  final random = new Random();
  var fontSize = 20;
  var message;

  HelloWorldComponent() {
    message = getMessage();
  }

  handleClick() {
    (fontSize < 180) ? fontSize += 5 : null;
    message = getMessage();
    print(fontSize);
  }

  String getFontSize() {
    return '${fontSize}px';
  }
  String getMessage() {
    return MESSAGES[random.nextInt(MESSAGES.length)];
  }
}



main() {
  bootstrap(HelloWorldComponent);
}
