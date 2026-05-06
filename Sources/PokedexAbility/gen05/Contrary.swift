//
//  Contrary.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let contrary = Contrary.ability
}

enum Contrary: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "contrary")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "あまのじゃく"
        default:
            "Contrary"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "能力ランクの変化が逆になる。"
        case (.v, _):
            "Stat changes are reversed."
        default:
            name(locale: locale)
        }
    }
}
