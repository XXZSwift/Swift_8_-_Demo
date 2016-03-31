//
//  ViewController.swift
//  Swift_8_枚举类型_Demo
//
//  Created by Jiayu_Zachary on 16/1/4.
//  Copyright © 2016年 Zachary. All rights reserved.
//

import UIKit

//单一枚举类型
enum EnumerationDirection {
    case East
    case South
    case West
    case North
}

//组合枚举类型
enum Product {
    case Auto(String, Int, Float, Float)
    case Mobile(String, Float, String, Float)
}

//设置枚举值的原始值
enum InfoEnum:String {
    case Name = "xxz"
    case Location = "北京"
    case age = "19"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1 - 枚举语法格式
        EnumGrammerFormat()
        
        //2 - 匹配枚举成员
        MatchEnumMember(.South)
        
        //3 - 组合枚举成员
        let proOne = Product.Auto("八轮载重卡车", 8, 25.99, 12.3)
        let proTwo = Product.Mobile("iPhone 5s", 4.0, "iOS", 4800)
        
        ComposeEnumMember(proOne)
        ComposeEnumMember(proTwo)
        
        //4 - 设置枚举值的原始值
        let infoName = InfoEnum.Name.rawValue
        print(infoName)
        
        let infoAge = InfoEnum.age.rawValue
        print(infoAge)
        
        let str = "1100"
        
        print(Int(str)!)
    }
    
    //4 - 设置枚举值的原始值
//    func InfoEnum (info:InfoEnum) {
//        if InfoEnum.name == "xxz" {
//            
//        }
//    }
    
    //3 - 组合枚举成员
    func ComposeEnumMember (type:Product){
        
        switch (type) {
            
        case .Auto(let name, let wheelCount, let payLoad, let price) :
            print("name = \(name), wheelCount = \(wheelCount), payLoad = \(payLoad), price = \(price)")
            
        case .Mobile(let name, let srceenSize, let os, let price) :
            print("name = \(name), srceenSize = \(srceenSize), os = \(os), price = \(price)")
            
        }
        
    }

    //2 - 匹配枚举成员
    func MatchEnumMember(direction:EnumerationDirection){
        switch direction {
            case .East:
                print("东")
                print("东")
            case .South:
                print("南")
                print("南")
                fallthrough //继续执行下一条语句
            case .West:
                print("西")
                print("西")
            case .North:
                print("北")
                print("北")
            
//            default: //可无, 因为四种枚举类型, 上面全部列出来了
//                print("error")
        }
    }
    
    //1 - 枚举语法格式
    func EnumGrammerFormat(){
        //由于North并不对应整数值, 所以会输出(Enum Value)
        var direction = EnumerationDirection.East
        print(direction)
        
        //再次赋值时, 只需直接指定枚举成员即可
        direction = .South
        print(direction)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

