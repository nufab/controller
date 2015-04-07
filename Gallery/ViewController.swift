//
//  ViewController.swift
//  Gallery
//
//  Created by shohei on 4/7/15.
//  Copyright (c) 2015 shohei. All rights reserved.
//
import UIKit
import Starscream

class ViewController: UIViewController, WebSocketDelegate {
    var socket = WebSocket(url: NSURL(scheme: "ws", host: "133.242.160.150:7231", path: "/ws")!, protocols: ["chat", "superchat"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        socket.delegate = self
        socket.connect()
    }
    
    // MARK: Websocket Delegate Methods.
    
    func websocketDidConnect(ws: WebSocket) {
        println("websocket is connected")
    }
    
    func websocketDidDisconnect(ws: WebSocket, error: NSError?) {
        if let e = error {
            println("websocket is disconnected: \(e.localizedDescription)")
        }
    }
    
    func websocketDidReceiveMessage(ws: WebSocket, text: String) {
        println("Received text: \(text)")
    }
    
    func websocketDidReceiveData(ws: WebSocket, data: NSData) {
        println("Received data: \(data.length)")
    }
    
    // MARK: Write Text Action
    
    @IBAction func susuChanged(sender: UISwitch) {
        if(sender.on == true){
          socket.writeString("susu in")
        }
        else {
          socket.writeString("susu out")
        }
    }
    
    @IBAction func masudaChanged(sender: UISwitch) {
        if(sender.on == true){
          socket.writeString("masuda in")
        }
        else {
          socket.writeString("masuda out")
        }
    }
    
    @IBAction func aokiChanged(sender: UISwitch) {
        if(sender.on == true){
          socket.writeString("aoki in")
        }
        else {
          socket.writeString("aoki out")
        }
    }
    
    @IBAction func ohnoChanged(sender: UISwitch) {
        if(sender.on == true){
          socket.writeString("ohno in")
        }
        else {
          socket.writeString("ohno out")
        }
    }
    
    @IBAction func masumoriChanged(sender: UISwitch) {
        if(sender.on == true){
          socket.writeString("masumori in")
        }
        else {
          socket.writeString("masumori out")
        }
    }
    
    @IBAction func kenChanged(sender: UISwitch) {
        if(sender.on == true){
          socket.writeString("ken in")
        }
        else {
          socket.writeString("ken out")
        }
    }
    
    // MARK: Disconnect Action
    
//    @IBAction func disconnect(sender: UIBarButtonItem) {
//        if socket.isConnected {
//            socket.disconnect()
//        } else {
//            socket.connect()
//        }
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
