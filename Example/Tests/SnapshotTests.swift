//
//  SnapshotTests.swift
//  AYSwift
//
//  Created by Dani Postigo on 9/8/15.
//  Copyright (c) 2015 CocoaPods. All rights reserved.
//

import FBSnapshotTestCase

class SnapshotTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
//        self.recordMode = true
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        view.backgroundColor = UIColor.blueColor()
        FBSnapshotVerifyView(view)
    }
    
    func testExample2() {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        view.backgroundColor = UIColor.blueColor()
        FBSnapshotVerifyView(view)
        FBSnapshotVerifyLayer(view.layer)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
