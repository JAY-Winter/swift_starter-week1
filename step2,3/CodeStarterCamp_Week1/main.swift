//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - STEP2 아이스크림 만들기

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

// MARK: - 실행예시

// 실행 예시 1
// makeTopOfIceCream(width: 11, height: 8)
// makeIceCreamBar(frontSpace: 4, row: 4)

// MARK: - STEP3 주문에 따른 빼빼로 그리기

func makePeperoStick(height: Int) -> String {
    let stick: String = " | |"
    var peperoStick: String = ""
    
    for _ in 1...height {
        peperoStick.append(stick+"\n")
    }
    return peperoStick
}


func makePeperoBody(body: String, topping: String) -> String {
    var peperoBody: String = ""
    
    if topping.isEmpty {
        peperoBody = " \(topping)\(body)"
    } else {
        peperoBody = "\(topping)\(body)"
    }
    return peperoBody
}


func makePeperoWholeBody(bodyHeight: Int, peperoBody: String) -> String {
    var peperoWholeBody: String = ""
    let lineOfPeperoBody = peperoBody
    let reverseLineOfPeperoBody = lineOfPeperoBody.reversed()
    
    for line in 1...bodyHeight {
        if line % 2 == 1 {
            peperoWholeBody.append(lineOfPeperoBody+"\n")
        } else {
            peperoWholeBody.append(" "+reverseLineOfPeperoBody+"\n")
        }
    }
    return peperoWholeBody
}


func makeWholePepero(bodyHeight: Int, body: String, topping: String, stickHeight: Int) -> String {
    let peperoBody = makePeperoBody(body: body, topping: topping)
    let peperoWholeBody = makePeperoWholeBody(bodyHeight: bodyHeight, peperoBody: peperoBody)
    let peperoStick = makePeperoStick(height: stickHeight)
    let wholePepero = peperoWholeBody + peperoStick
    
    print("""
    -------------------------
    실행 예시 정보
    bodyHeight: \(bodyHeight)
    body: \(body)
    topping: \(topping)
    stickHeight: \(stickHeight)
    -------------------------
    """)
    
    return wholePepero
}

// MARK: - 실행예시
//
// 실행 예시 1
print(makeWholePepero(bodyHeight: 4, body: "***", topping: "", stickHeight: 10))
//
// 실행 예시 2
print(makeWholePepero(bodyHeight: 12, body: "***", topping: "&", stickHeight: 4))
//
// 실행 예시 3
print(makeWholePepero(bodyHeight: 12, body: "***", topping: "#", stickHeight: 6))
//
// 실행 예시 4
print(makeWholePepero(bodyHeight: 6, body: "|0|", topping: "", stickHeight: 4))
//
// 실행 예시 5
print(makeWholePepero(bodyHeight: 5, body: "@@@", topping: "", stickHeight: 4))
