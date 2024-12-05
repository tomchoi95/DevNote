import UIKit

Int8.max //Int8의 최댓값
Int8.min //Int8의 최솟값

//Int //애플은 64비트 -> 8바이트

// 불린 Boolean

let happy = true //불린 literal은 무조건 소문자임.
let gloomy = false

// 보통 불린의 접두어는 is, has를 사용하는 경우가 많음.
let str = ""
str.isEmpty // 이름만 봐도 타임을 어느정도 유추할 수가 있다.

let num = 123
// print(type(of: num)) //타입을 알려면 type(of:)를 사용하면 타임을 알 수 있다.

// 위의 123은 컴파일러가 추론함. 형식 추론.

let oneChar: Character = "1"
// let doubleCh: Character = "AA" or "" 오류남. 캐랙터는 1자.

let rate: Double = 1.94
let amt = 10_000_000
let result = rate * Double(amt)

// Type Conversion  타입 변환 // Type(value)

let a = 123.45
let b = Int8(a)
Int8.max

let d = Int.max
// let e = Int8(d) // 타입컨버젼 실패. 크래쉬남. 큰타입에서 작은타입으로 변환은 최대한 하지 말자.

let st = "number"
let numb = Int(st) // 컨버젼 실패해서 nil 반환.

// typealias 를 이용하여 더블타입을 코디네이트로 바꾸어보자.
typealias Coordinate = Double // 코디네이트는 더블타입임.

let lat: Coordinate = 12.34
let lon: Coordinate = 45.67


/* UI
 텍스트 필드는 한줄 입력.
 텍스트필드에 텍스트를 쓰면 텍스트가 바뀜
 폰트 설정 가능.
 얼라인먼트(정렬) 가능
 
 버튼.
 스타일 plain -> default
 타이틀 // 버튼에 나오는 글씨
 
 UIView //가장 기본적은 뷰
 컨테이너.
 
 Lable
 
 오토레이아웃. 제약(constraint)
 */

// ViewContriller

class ViewController: UIViewController {
    @IBOutlet weak var firstOperandField: UITextField!
    @IBOutlet weak var secondOperandField: UITextField!
    @IBOutlet weak var operatorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func selectOperator(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let plusActionn = UIAlertAction(title: "➕", style: .default) { _ in
            self.operatorButton.setTitle("➕", for: .normal)
        }
        let minusActionn = UIAlertAction(title: "➖", style: .default) { _ in
            self.operatorButton.setTitle("➖", for: .normal)
        }
        let multiplyActionn = UIAlertAction(title: "✖️", style: .default) { _ in
            self.operatorButton.setTitle("✖️", for: .normal)
        }
        let divideActionn = UIAlertAction(title: "/", style: .default) { _ in
            self.operatorButton.setTitle("/", for: .normal)
        }
        
        actionSheet.addAction(plusActionn)
        actionSheet.addAction(minusActionn)
        actionSheet.addAction(multiplyActionn)
        actionSheet.addAction(divideActionn)
        
        present(actionSheet, animated: true)
    }
    @IBAction func calculate(_ sender: Any) {
        let a = Int(firstOperandField.text!)!
        let b = Int(secondOperandField.text!)!
        let op = operatorButton.title(for: .normal) // op 상수에 버튼의 문자열 저장.
        
        if op == "+" {
            let result = a + b
            resultLabel.text = "\(result)"
        } else if op == "-" {
            let result = a - b
            resultLabel.text = "\(result)"
        } else if op == "*" {
            let result = a * b
            resultLabel.text = "\(result)"
        } else if op == "/" {
            let result = a / b
            resultLabel.text = "\(result)"
        } else { // 연산자를 선택하지 않고 계산을 눌렀을 때 실행 할 코드
            print("연산자 선택")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// 연산자.
// 단향연산자는 공백이 중요 ex) +a , + a 는 다름.
// 이항연산자. a+b와 a + b 는 같음. 띄어쓰기 상관 안함. but a+ b, a +b 는 안됌.
// a + b * c 에서 곱하기 먼저 연산됨. 곱하기 연산자의 우선순위가 더하기 연산자의 우선순위보다 높다.
// 괄호로 우선순위 지정 가능.

let aa = 12
let bb = 34

+a // 전치 연산자, prefix Operator
aa + bb

12 + 34
aa + 56 // 타입만 맞춘다면 literal, 식별자 섞어서 쓸 수 있음.

-aa
-bb
aa - bb
aa * bb
aa / bb
bb / aa

let cc = Double(aa)
let dd = Double(bb)

cc / dd
dd / cc

aa % bb // 나머지 연산자 %
// cc % dd // 나머지 연산자는 실수를 지원하지 않음.
cc.truncatingRemainder(dividingBy: dd)
// Double.truncatingRemainder(dividingBy:) //를 이용하면 실수도 나머지 구할 수 있음.

aa == bb
aa != bb
aa > bb
aa >= bb
aa < bb
aa <= bb

// 조건 == condition == boolean expression
if num % 2 == 0 {
    print("짝수")
} else {
    print("홀수")
}

let weekday = Calendar.current.component(.weekday, from: .now) // 요일을 다룸. Calendar 함 보자.

if weekday == 1 {
    print("일요일")
} else if weekday == 2 {
    print("월요일")
} else if weekday == 3 {
    print("화요일")
} else if weekday == 4  {
    print("수요일")
} else if weekday == 5 {
    print("목요일")
} else if weekday == 6 {
    print("금요일")
} else if weekday == 7 {
    print("토요일")
}
