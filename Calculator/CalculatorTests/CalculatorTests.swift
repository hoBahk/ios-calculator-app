//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by 박병호 on 2021/11/08.
//

import XCTest

class CalculatorTests: XCTestCase {
    
    func test_빈_큐에_1을_enQueue하면_1이_남는다() {
        var queue = CalculatorItemQueue<Int>()
        queue.enQueue(1)
        XCTAssertEqual(queue.convertArray(), [1])
    }
    
    func test_빈_큐에_1을_enQueue_2를_enqueue하면_1과_2가_남는다() {
        var queue = CalculatorItemQueue<Int>()
        queue.enQueue(1)
        queue.enQueue(2)
        XCTAssertEqual(queue.convertArray(), [1, 2])
    }
    
    func test_비어있는_큐를_deQueue하면_deQueueFailed에러_발생한다() throws {
        var queue = CalculatorItemQueue<Int>()
        //XCTAssertEqual(queue.returnQueue(), nil)
        XCTAssertThrowsError(try queue.deQueue()){ error in XCTAssertEqual(error as? QueueError, QueueError.deQueueFailed)}
    }
    
    func test_빈_큐에_1을_enqueue_후에_큐를_dequeue하면_빈_큐가_된다() throws {
        var queue = CalculatorItemQueue<Int>()
        queue.enQueue(1)
        try queue.deQueue()
        XCTAssertEqual(queue.convertArray(), [])
    }

    func test_데이터가_2개_있는_큐를_삭제하면_한개가_남는다() throws {
        var queue = CalculatorItemQueue<Int>()
        queue.enQueue(1)
        queue.enQueue(2)
        try queue.deQueue()
        XCTAssertEqual(queue.convertArray(), [2])
    }
    
    func test_빈_큐에_데이터_1개를_enQueue_후에_큐를_모두삭제하면_빈큐가_남는다() {
        var queue = CalculatorItemQueue<Int>()
        queue.enQueue(1)
        queue.removeAll()
        XCTAssertEqual(queue.convertArray(), [])
    }
    
    func test_빈_큐에_데이터_2개를_enQueue_후에_큐를_모두삭제하면_빈큐가_남는다() {
        var queue = CalculatorItemQueue<Int>()
        queue.enQueue(1)
        queue.enQueue(2)
        queue.removeAll()
        XCTAssertEqual(queue.convertArray(), [])
    }
    
    func test_빈_큐에_데이터_5개를_enQueue_후에_큐를_모두삭제하면_빈큐가_남는다() {
        var queue = CalculatorItemQueue<Int>()
        queue.enQueue(1)
        queue.enQueue(2)
        queue.enQueue(3)
        queue.enQueue(4)
        queue.enQueue(5)
        queue.removeAll()
        XCTAssertEqual(queue.convertArray(), [])
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}
