//
//  ViewController.swift
//  imageViewPractice
//
//  Created by 박상은 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1
    var maxImage = 6
    
    @IBOutlet var imgView: UIImageView!
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "1.png")
    }
    //[이전] 버튼에 대한 액션 함수
    @IBAction func btnPrevImage(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1){
            numImage = maxImage
        }
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
    //[다음] 버튼에 대한 액션 함수
    @IBAction func btnNextImage(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage) {
            numImage = 1
        }
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
}
