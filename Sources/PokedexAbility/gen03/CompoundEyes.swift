//
//  CompoundEyes.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let compoundEyes = CompoundEyes.ability
}

enum CompoundEyes: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "compound-eyes")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふくがん"
        default:
            "Compound Eyes"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "技の命中率が1.3倍になる。"
        case (.iii, _):
            "Move accuracy is 1.3x."
        default:
            name(locale: locale)
        }
    }
}
