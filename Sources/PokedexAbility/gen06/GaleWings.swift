//
//  GaleWings.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let galeWings = GaleWings.ability
}

enum GaleWings: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "gale-wings")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はやてのつばさ"
        default:
            "Gale Wings"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ひこうタイプの技の優先度が1上がる。"
        case (.vi, _):
            "Flying-type moves have their priority increased by one."
        default:
            name(locale: locale)
        }
    }
}
