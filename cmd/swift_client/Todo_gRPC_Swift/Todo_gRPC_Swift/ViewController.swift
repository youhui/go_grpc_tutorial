//
//  ViewController.swift
//  Todo_gRPC_Swift
//
//  Created by Michael on 2019/7/2.
//  Copyright © 2019 Hui You. All rights reserved.
//

import UIKit
import SwiftGRPC
import SwiftProtobuf

class ViewController: UIViewController {
    
    private let client = V1_ToDoServiceServiceClient(address: "localhost:9090", secure: false)

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.setupUI()
    }
    
    private func setupUI() {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 60, height: 26))
        button.setTitle("read", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func buttonAction() {
        self.requestTodoList()
    }

    func requestTodoList() {
//        var req = V1_ReadAllRequest()
//        req.api = "v1"
//        let data = Metadata()
//        _ = try? client.readAll(req, completion: { (rsp, result) in
//            if result.statusCode == .ok {
//                print(rsp as Any)
//            }
//        })
//
  
        
        let timeStr = "\(Date())"
        var t = V1_ToDo()
        t.title = "title \(timeStr)"
        t.description_p = "Created \(timeStr)"
        let timeStamp = Int64(Date().timeIntervalSince1970)
        t.reminder = Google_Protobuf_Timestamp(seconds: timeStamp, nanos: 0)
        
        var req = V1_CreateRequest()
        req.api = "v1"
        req.toDo = t
        
        _ = try? client.create(req, completion: { (rsp, result) in
            if result.statusCode == .ok {
                print(rsp as Any)
            }
        })
    }
}

