//
//  CoffeeDecoratorViewController.swift
//  ArchitecturesAndDesignPatterns
//
//  Created by Macbook on 16.04.2022.
//

import UIKit

protocol Coffee {
    var cost: Double { get }

}

class SimpleCoffee: Coffee {
    var cost: Double {
        return 0.0
    }
}

class Milk: Coffee {
    var cost: Double {
        return 0.4
    }
}

class Syrup: Coffee {
    var cost: Double {
        return 0.5
    }
}

class Sugar: Coffee {
    var cost: Double {
        return 0.0
    }
}

class Cream: Coffee {
    var cost: Double {
        return 0.6
    }
}

class Cinnamon: Coffee {
    var cost: Double {
        return 0.1
    }
}

class CoffeeWith: CoffeeDecorator {
    
    let base: Coffee
    
    var cost: Double {

        return base.cost + 1.0
       
    }
    
    required init(base: Coffee) {

        self.base = base
    
    }
}

protocol CoffeeDecorator: Coffee {
    
    var base: Coffee { get }
    init(base: Coffee)
    
}

class CoffeeDecoratorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coffee = SimpleCoffee()
        let milk = Milk()
        let syrup = Syrup()
        let sugar = Sugar()
        let cream = Cream()
        let cinnamon = Cinnamon()
        
    
        let coffeeSimple = CoffeeWith(base: coffee)
        let coffeMilk = CoffeeWith(base: milk)
        let coffeeSyrup = CoffeeWith(base: syrup)
        let coffeSugar = CoffeeWith(base: sugar)
        let coffeeCream = CoffeeWith(base: cream)
        let coffeCinnamon = CoffeeWith(base: cinnamon)

        
        print("Стоимость кофе \(coffeeSimple.cost)$")
        print("Стоимость кофе с молоком \(coffeMilk.cost)$")
        print("Стоимость кофе с сиропом \(coffeeSyrup.cost)$")
        print("Стоимость кофе с сахаром \(coffeSugar.cost)$")
        print("Стоимость кофе со сливками \(coffeeCream.cost)$")
        print("Стоимость кофе с корицей \(coffeCinnamon.cost)$")
    
    }
    



}
