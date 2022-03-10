//
//  LeeWhiteViewController.swift
//  demopeterpan
//
//  Created by Chu Go-Go on 2022/3/10.
//

import UIKit

class LeeWhiteViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        poetryattributedStyle(Fontcolor: .orange, BackgroundColor: .brown, FontSize: 15, poetry: "故人西辭黃鶴樓，煙花三月下揚州。\n孤帆遠影碧空盡，唯見長江天際流。", shadowColor: .red)
        leeWhite()
        // Do any additional setup after loading the view.
    }
    func leeWhite(){
        
//        設定字體顏色大小
        let TitleattributedStyle: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.yellow, .underlineStyle: NSUnderlineStyle.double.rawValue,.underlineColor: UIColor.green, .font : UIFont(name: "jf-openhuninn-1.1", size: 27), .backgroundColor: UIColor.blue]
//         加入文字
        let TitleattributedText = NSAttributedString(string: "黃鶴樓送孟浩然之廣陵", attributes: TitleattributedStyle)
//        設定一個label
        let titleLabel = UILabel()
//        將字體加入label裡
        titleLabel.attributedText = TitleattributedText
//        設定他的尺寸
        titleLabel.frame = CGRect(x: 50, y: 30, width: 300, height: 200)
//        加入到view裡面
        view.addSubview(titleLabel)
        let authorattributedStyle:[NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white, .underlineStyle: NSUnderlineStyle.single.rawValue,.underlineColor: UIColor.black, .font : UIFont(name: "jf-openhuninn-1.1", size: 27), .backgroundColor: UIColor.green]
        let authorattributedText = NSAttributedString(string: "作者：李白", attributes: authorattributedStyle)
        let authorLabel = UILabel()
        authorLabel.attributedText = authorattributedText
        authorLabel.frame = CGRect(x: 120, y: 60, width: 200, height: 200)
        view.addSubview(authorLabel)
    }
//    利用func更改字體顏色 大小 內容 陰影顏色
    func poetryattributedStyle(Fontcolor:UIColor,BackgroundColor:UIColor ,FontSize: Int,poetry:String , shadowColor: UIColor){
        //        加入陰影
                let myShadow = NSShadow()
        //        加入陰影的粗度
                myShadow.shadowBlurRadius = 3
        //        陰影的尺寸
                myShadow.shadowOffset = CGSize(width: 3, height: 3)
        //        陰影的顏色
                myShadow.shadowColor = shadowColor
//        設定字體大小，格式，顏色
        let poetryattributedStyle:[NSAttributedString.Key: Any] = [.foregroundColor: Fontcolor,.underlineStyle: NSUnderlineStyle.double.rawValue,.underlineColor:UIColor.white, .font : UIFont(name: "jf-openhuninn-1.1", size: CGFloat(FontSize)), .backgroundColor: BackgroundColor, .shadow: myShadow]
//        加入文字,以及他的格式poetryattributedStyle
        let poetryattributedText = NSAttributedString(string: poetry, attributes: poetryattributedStyle)
//        宣告一個UITextView()
        let poetryTextView = UITextView()
//          設定位置尺寸
        poetryTextView.frame = CGRect(x: 70, y: 220, width: 250, height: 200)
//        加入文字
        poetryTextView.attributedText = poetryattributedText
//        加入TextView背景顏色
        poetryTextView.backgroundColor = UIColor.clear
//          加入到view裡面
        view.addSubview(poetryTextView)
        
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
