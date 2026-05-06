//
//  ThickFat.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let thickFat = ThickFat.ability
}

enum ThickFat: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "thick-fat")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "あついしぼう"
        default:
            "Thick Fat"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "ほのお・こおりタイプの技で受けるダメージが半分になる。"
        case (.iii, _):
            "Damage from Fire- and Ice-type moves is halved."
        default:
            name(locale: locale)
        }
    }
}
