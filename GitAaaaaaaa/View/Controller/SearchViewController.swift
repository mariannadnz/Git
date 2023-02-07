//
//  ViewController.swift
//  GitHub
//
//  Created by unicred on 01/02/23.
//



import UIKit
class SearchViewController: UIViewController {
 
    
    let searchScreen = SearchScreenCustomView()
    
    var userModel: UserModel?
    
    override func loadView() {
        view = searchScreen
 
 }
}
