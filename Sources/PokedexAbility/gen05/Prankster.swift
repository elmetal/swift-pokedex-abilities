//
//  Prankster.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let prankster = Prankster.ability
}

enum Prankster: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "prankster")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いたずらごころ"
        default:
            "Prankster"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "変化技の優先度が1上がる。"
        case (.v, _):
            "Status moves have their priority increased by one."
        default:
            name(locale: locale)
        }
    }
}
