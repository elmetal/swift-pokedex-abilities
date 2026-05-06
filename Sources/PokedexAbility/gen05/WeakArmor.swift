//
//  WeakArmor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let weakArmor = WeakArmor.ability
}

enum WeakArmor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "weak-armor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "くだけるよろい"
        default:
            "Weak Armor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "物理技を受けた時、ぼうぎょが1段階下がり、すばやさが1段階上がる。"
        case (.v, _):
            "When hit by a physical move, Defense falls by one stage and Speed rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
