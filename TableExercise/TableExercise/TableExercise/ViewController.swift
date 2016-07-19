//
//  ViewController.swift
//  TableExercise
//
//  Created by macmini2 on 7/18/16.
//  Copyright © 2016 ivandeltaplan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var animalNames = ["жаба", "крыса", "коза",
        "гныда", "выдра", "бобер",
        "олэнь", "гусь", "таракан",
        "карась"]

    var animalImages = ["saba","daba","faba","gaba","haba","jaba","kaba","laba","zaba","xaba"]
    
    var textLabels = ["Ставкова жаба (Pelophylax lessonae) — вид жаб роду Зелена жаба, поширена в Європі. Інша назва — жаба зелена.",
        "Твари́ни (лат. Animalia або лат. Metazoa) — царство переважно багатоклітинних еукаріотичних (ядерних) організмів, однією з найголовніших ознак якого є гетеротрофність (тобто, споживання готових органічних речовин) та здатність активно рухатись.",
        "Тварини належать до еукаріотів (у клітинах є ядра). Класичними ознаками тварин вважаються: гетеротрофність (харчування готовими органічними сполуками) та здатність активно пересуватися. Втім, існує чимало тварин, що ведуть нерухомий спосіб життя, а гетеротрофність властива також грибам і деяким рослинам-паразитам.",
         "У побуті під словом тварини часто розуміють лише чотириногих наземних хребетних (ссавці, плазуни та земноводні). У науці за терміном «тварини» закріплено ширше значення, що відповідає латинському Animalia (див. вище). ",
            "Тому кажуть, що до тварин, крім ссавців, належить багато інших організмів: риби, птахи, комахи, павукоподібні, молюски, морські зірки, всілякі черв'яки і тощо. Людина теж належить до царства тварин, але традиційно розглядається окремо — навіть професійні біологи вживають звороти «тварини і людина» чи «тварини, включаючи людину».",
        "При цьому, раніше до цього царства відносили багатьох гетеротрофних найпростіших і ділили тварин на підцарства: одноклітинні Protozoa і багатоклітинні Metazoa.",
        "Зараз назва «тварини» в таксономічному сенсі закріпилося за багатоклітинними.",
        "В такому розумінні тварини як таксон мають певніші ознаки — для них характерні оогамія, багатотканинна будова, наявність як мінімум двох зародкових листків, стадій бластули і гаструли в зародковому розвитку.",
        "У переважної більшості тварин є м'язи і нерви, а не мають їх губки, пластинчасті, мезозої, кнідоспорідії, які можливо, втратили їх.",
        "У той же час, у науці термін «тварини» іноді пропонується використовувати в ще ширшому значенні, маючи на увазі під тваринами не таксон, а тип організації — життєву форму, засновану на рухливості, гетеротрофності і голозойному живленні."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // Return the number of rows in the section.
            return animalNames.count
            
            
            
            
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->
            UITableViewCell {
            let cellIdentifier = "Cell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath:
            indexPath) as! TextAnimal
            
                // Configure the cell...
           
            cell.animalName.text = animalNames [indexPath.row]
            cell.animalDescription.text = textLabels[indexPath.row]
            cell.animalImageView.image = UIImage(named:
                animalImages[indexPath.row])
            return cell
    }
    
}

