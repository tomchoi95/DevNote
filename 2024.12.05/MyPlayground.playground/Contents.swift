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
    @IBOutlet weak var operatorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func selectOperator(_ sender: Any) {
        
    }
    @IBAction func calculate(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
