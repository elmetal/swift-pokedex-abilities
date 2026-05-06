//
//  ParentalBond.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let parentalBond = ParentalBond.ability
}

enum ParentalBond: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "parental-bond")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "おやこあい"
        default:
            "Parental Bond"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "攻撃技が2回当たり、2回目のダメージは下がる。"
        case (.vi, _):
            "The Pokémon's moves hit twice, with the second hit dealing reduced damage."
        default:
            name(locale: locale)
        }
    }
}
