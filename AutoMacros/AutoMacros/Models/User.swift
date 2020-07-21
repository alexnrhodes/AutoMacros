//
//  User.swift
//  Macros
//
//  Created by Alex Rhodes on 7/14/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import Foundation


class User: ObservableObject {
    var id: UUID
    @Published var name: String
    var age: Double
    var height: Double
    @Published var weight: Double
    @Published var goal: Goal
    @Published var activityLevel: ActivityLevel
    @Published var macroPreference: MacroPrefeerence
    var sex: Sex
    @Published var macros: MacroSet? // [P,C,F]
    var macroHistory: [MacroSet]?
    var bmr: Double?
    var tdee: Double?
    @Published var dailyCalories: Double?
    var weightForWeek: [Double]?
    
    init(id: UUID, name: String, age: Double, height: Double, weight: Double, goal: Goal, activityLevel: ActivityLevel, macroPreference: MacroPrefeerence, sex: Sex) {
        self.id = id
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.goal = goal
        self.activityLevel = activityLevel
        self.macroPreference = macroPreference
        self.sex = sex
    }
}

enum Goal: String {
    case loseHalf = "-0.5"
    case loseOne = "-1.0"
    case loseOneAndHalf = "-1.5"
    case loseTwo = "-2.0"
    case gainHalf = "0.5"
    case gainOne = "1.0"
    case gainOneAndHalf = "1.5"
    case gainTwo = "2.0"
    case maitenence = "0"
}

enum Deficit: String {
    case threePercent = "0.03"
    case fivePercent = "0.05"
    case sevenPercent = "0.07"
    case tenPercent = "0.1"
}

enum Suprlus: String {
    case threePercent = "0.03"
    case fivePercent = "0.05"
    case sevenPercent = "0.07"
    case tenPercent = "0.1"
}

enum ActivityLevel: String {
    case sedentary = "Sedentary"
    case light = "Lightly Active"
    case moderate = "Moderately Active"
    case very = "Very Active"
    case extra = "Vigorously Active"
}

enum MacroPrefeerence {
    case lowCarb
    case highCarb
    case moderateCarb
}

enum Sex {
    case male
    case female
}

enum Progress {
    case none
    case some
}
