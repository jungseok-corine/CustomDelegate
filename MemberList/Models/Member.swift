//
//  Member.swift
//  MemberList
//
//  Created by 오정석 on 8/12/2023.
//

import UIKit

struct Member {
    
    lazy var memberImage: UIImage? = {
        //이름이 없다면, 시스템 사람이미지 셋팅
        guard let name = name else {
            return UIImage(systemName: "person")
        }
        //해당이름으로된 이미지가 없다면, 시스템 사람이미지 셋팅
        return UIImage(named: "\(name).png") ?? UIImage(systemName: "person")
    }()
    
    //멤버의 (절대적) 순서를 위한 타입 저장 속성
    static var memberNumbers: Int = 0
    
    let memberId: Int
    var name: String?
    var age: Int?
    var phone: String?
    var address: String?
    
    init(name: String?, age: Int?, phone: String?, address: String?) {
        //0일때는 0, 0이 아닐때는 타입 저장 속성의 절대적 값으로 셋팅 (자동순번)
        self.memberId = Member.memberNumbers
        
        //나머지 저장 속성은 외부에서 셋팅
        self.name = name
        self.age = age
        self.phone = phone
        self.address = address
        
        //멤버를 생성한다면, 항상 타입 저장 속성의 정수값 +1
        Member.memberNumbers += 1
    }
}
