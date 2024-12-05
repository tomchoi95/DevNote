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
print(type(of: num)) //타입을 알려면 type(of:)를 사용하면 타임을 알 수 있다.

// 위의 123은 컴파일러가 추론함. 형식 추론.

