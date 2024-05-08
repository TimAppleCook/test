//
//  main.swift
//  fork
//
//  Created by Louis on 3/26/24.
//
import Foundation

let args = CommandLine.arguments

guard args.count == 2, let time = Int(args[1]) else {
    print("使用用例: ./fork [创建进程数]")
    exit(1)
}

let word = "a"
var count = 0

if time != 0 {
    for i in 0..<time {
        // 在 Swift 中，我们不直接使用fork()，而是使用 Process 类来启动新的进程
        let process = Process()
        process.launchPath = "/usr/bin/env"  // 指定要启动的程序路径
        process.arguments = ["echo", "这是第\(i+1)个子进程'\(Character(UnicodeScalar(word.unicodeScalars.first!.value + UInt32(i+1))!))',目前的pid为:\(ProcessInfo.processInfo.processIdentifier)"]
        process.launch()
        process.waitUntilExit()  // 等待进程结束
        
        // Note: 在这个示例中，我们仅仅是启动了外部的 'echo' 命令来模拟子进程的行为
        // 在实际应用中，你可能需要根据具体任务来调用不同的程序或脚本
    }
} else {
    print("没有创建子进程")
}

