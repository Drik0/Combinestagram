//
//  ViewControllerExtension.swift
//  Combinestagram
//
//  Created by Gerson Costa on 04/07/2019.
//  Copyright © 2019 Underplot ltd. All rights reserved.
//

import UIKit
import RxSwift

extension UIViewController {
  
  func alert(title: String, message: String?) -> Completable {
    return Completable.create { [weak self] completable -> Disposable in
      let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "Close", style: .default, handler: { _ in
        completable(.completed)
      }))
      self?.present(alert, animated: true, completion: nil)
      return Disposables.create {
        self?.dismiss(animated: true, completion: nil)
      }
    }
    
  }
  
}
