//
//  ViewController.swift
//  MacUITest
//
//  Created by GSS Division on 6/8/18.
//  Copyright © 2018 GSS Division. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
    let tabView: NSTabView = {
        let tab = NSTabView()
        tab.translatesAutoresizingMaskIntoConstraints = false
        return tab
    }()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print("ViewController")
        
        setupView()
    }

    
    
    func setupView() {
        view.addSubview(tabView)
        
        tabView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tabView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tabView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tabView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//
//
        let tabController = FileInputController()
        let fileInput = NSTabViewItem(viewController: tabController)
        fileInput.label = "File Input"
        tabView.addTabViewItem(fileInput)
        
        let f1BController = Function1BController()
        let f1B = NSTabViewItem(viewController: f1BController)
        f1B.label = "Function 1B"
        tabView.addTabViewItem(f1B)
        
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

class FileInputController: NSViewController {
    
    let label: NSTextField = {
        let label = NSTextField(string: "my label")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let windowRect = NSApplication.shared.mainWindow?.frame
        
        print("FileInputController")
        
        setupView()
    }
    
    override func loadView() {
        view = NSView()
    }

    
    func setupView() {
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }
    
}

class Function1BController: NSViewController {
    
    let label: NSTextField = {
        let label = NSTextField(string: "my label")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //        let windowRect = NSApplication.shared.mainWindow?.frame
        
        print("Function1BController")
    }
    
    override func loadView() {
        view = NSView()
    }
    
}
