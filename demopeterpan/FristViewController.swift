//
//  FristViewController.swift
//  demopeterpan
//
//  Created by Chu Go-Go on 2022/3/8.
//

import UIKit

class FristViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func showBook(_ sender: Any) {
//        先宣告一個controller
           guard let controller =
//                    選擇你要點到的下一頁storyboard名稱
                    storyboard?.instantiateViewController(identifier: "\(MainViewController.self)", creator: { coder in
//                        宣告你的controller =你下一頁
               let controller = MainViewController(coder: coder)
//                        選擇他的類型
                        controller?.modalPresentationStyle = .automatic
//                        選擇你要的過場
                        controller?.modalTransitionStyle = .flipHorizontal
//                        最後回傳到controller
               return controller
           }) else { return }
//        把他show出來
           show(controller, sender: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
