//
//  TestViewModel.swift
//  MVVMSample
//
//  Created by r.f.kumar.mishra on 08/03/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import Foundation


class TestViewModel {
    
    private var name: String = "Rakesh"
    
    func setMyName(name: String) {
        self.name = name
    }
    
    func getMyName() -> String {
        return self.name
    }
    
    func foo() {
        print("foo")
    }
    
}
extension TestViewModel {
    
    func bar() {
        foo()
    }
}

