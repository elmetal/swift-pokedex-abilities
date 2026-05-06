//
//  WhiteSmoke.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let whiteSmoke = WhiteSmoke.ability
}

enum WhiteSmoke: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "white-smoke")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しろいけむり"
        default:
            "White Smoke"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手に能力を下げられない。"
        case (.iii, _):
            "Prevents other Pokémon from lowering the Pokémon's stats."
        default:
            name(locale: locale)
        }
    }
}
