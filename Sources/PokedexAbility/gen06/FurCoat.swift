//
//  FurCoat.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let furCoat = FurCoat.ability
}

enum FurCoat: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "fur-coat")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ファーコート"
        default:
            "Fur Coat"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "物理技で受けるダメージが半分になる。"
        case (.vi, _):
            "Damage from physical moves is halved."
        default:
            name(locale: locale)
        }
    }
}
