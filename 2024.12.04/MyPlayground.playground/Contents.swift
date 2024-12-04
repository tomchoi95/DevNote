import UIKit // 이걸 Frame Work라고 함

var greeting = "Hello, playground"

let starImage = UIImage(systemName: "star") //playground에서 보면 좀 자세하게 볼 수 있음.

var sum = 0
for i in 1 ... 10 {
    sum += i
}

print(sum)

dump(greeting)
/*
여기에
있다면
주석이
된다네
 */

var name = "Swift"
var thisYear = 2024
var valid = false

/*
 cmael case
 UpperCamelCase 클래스, 구조체, 열거형, 익스텐션
 lowerCamelCase 변수, 상수, 함수, 프로퍼티, 파라메터
 */

let address = "Seoul"
address
// address = "Gumi" 오류가 나는데 상수로 선언이 되었기 때문에 변경 불가.
name = "Tom"
// 변수는 타입이 같다면 변경 가능.


/*      Type
 int는 8바이트, 1byte = 8bit
 
 인트, 플롯, 더블, 불린, 스트링
 */
