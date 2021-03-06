//
//  CollectionViewController.swift
//  DoIOSMore
//
//  Created by Boburmirzo on 2/13/21.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    @IBOutlet var collectionView: UICollectionView!
    
    let numberOfColumn:CGFloat = 2
    var items:Array<Collection> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
}
    
    // MARK: - Method

    func initView() {
        settingNavigation()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.collectionView.register(UINib(nibName: "PostSCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        
        if let floatLaout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfColumn - 15
            floatLaout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
        items.append(Collection(title: "Best Coding", img: "im_man"))
        items.append(Collection(title: "Amazing Code", img: "im_woman"))
        items.append(Collection(title: "Best Coding", img: "im_man"))
        items.append(Collection(title: "Amazing Code", img: "im_woman"))
        items.append(Collection(title: "Best Coding", img: "im_man"))
        items.append(Collection(title: "Amazing Code", img: "im_woman"))
        items.append(Collection(title: "Best Coding", img: "im_man"))
        items.append(Collection(title: "Amazing Code", img: "im_woman"))
        items.append(Collection(title: "Best Coding", img: "im_man"))
        items.append(Collection(title: "Amazing Code", img: "im_woman"))
        items.append(Collection(title: "Best Coding", img: "im_man"))
        items.append(Collection(title: "Amazing Code", img: "im_woman"))
        items.append(Collection(title: "Best Coding", img: "im_man"))
        items.append(Collection(title: "Amazing Code", img: "im_woman"))
        items.append(Collection(title: "Best Coding", img: "im_man"))
        items.append(Collection(title: "Amazing Code", img: "im_woman"))
    }
    
    func settingNavigation() {
        let menu = UIImage(named: "ic_menu")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: menu, style: .plain, target: self, action: #selector(rigthTapped))
        
        title = "Collaction View"
    }
    
    // MARK: - Action
    
    @objc func rigthTapped(){
        let vc:ScrollViewController = ScrollViewController(nibName: "ScrollViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - CollactionView

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! PostSCollectionViewCell
        
        cell.postImage.image = UIImage(named: item.img)
        cell.postTitile.text = item.title
        
        return cell
    }
    
}
