//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// STEP2 아이스크림 만들기
func makeTopOfIceCream(width: Int, height: Int) {
    let frame = width * height
    
    for count in 1...frame {
        print("*", terminator: "")
        if count % width == 0 {
            print("*", terminator: "\n")
        }
    }
}


func makeIceCreamBar(frontSpace: Int, row: Int) {
    for _ in 1...row {
        for _ in 1...frontSpace {
            print(" ", terminator: "")
        }
        print("| |")
    }
}


// 아이스크림 그리기 호출
// makeTopOfIceCream(width: 11, height: 8)
// makeIceCreamBar(frontSpace: 4, row: 4)

/*
 STEP3 주문에 따른 빼빼로 그리기
 다양한 빼빼로를 출력해봅시다.
 실행 예시의 정보(길이, 몸통, 토핑, 막대길이)를 함께 출력합니다.
 실행 예시의 빼빼로가 모두 출력되어야 합니다.
 자신만의 토핑, 몸통, 막대 등을 만들어 출력해봅시다.
 */

// 길이(Int)에 따른 막대(빼빼로 손잡이)를 그리는 함수
func makePeperoBar(length: Int) {
    let body: String = " | |"
    for _ in 1...length {
        print(body)
    }
}
git commit -m "docs:
step2,3 폴더 생성 및 병합"
// 몸통(String), 토핑(String)을 매개변수로 받아 토핑과 몸통을 그리는 함수
func makePeperoBody(body: String, topping: String) -> String {
    var peperoBody: String = ""
    
    if topping.isEmpty {
        peperoBody = " \(topping)\(body) "
    } else {
        peperoBody = "\(topping)\(body)"
    }
    return peperoBody
}


// makePeperoBody 길이 받아서 전체바디 그리기
// 길이(Int)에 따라 몸통을 그리는 함수

// for _ in stride(from: 0, to: bodyLength, by: 2) {
    // makePeperoBody(body: "***", topping: "&")
// }


func makePeperoWholeBody(bodyLength: Int) -> String {
    var wholePeperoBody: String = ""
    let peperoBody = makePeperoBody(body: "***", topping: "&")
    let reversePeperoBody = String(peperoBody.reversed())
    
    for line in 1...bodyLength {
        if line % 2 == 1 {
            wholePeperoBody.append(peperoBody+"\n")
        } else {
            wholePeperoBody.append(reversePeperoBody+"\n")
        }
    }
    return wholePeperoBody
}

// 각종 매개변수를 받아 위의 세 메서드를 호출하는 함수??
func makePepero() {}

print(makePeperoWholeBody(bodyLength: 3))
