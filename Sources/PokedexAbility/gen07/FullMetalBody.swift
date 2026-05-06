//
//  FullMetalBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let fullMetalBody = FullMetalBody.ability
}

enum FullMetalBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "full-metal-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "メタルプロテクト"
        default:
            "Full Metal Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "相手に能力を下げられない。"
        case (.vii, _):
            "Prevents other Pokémon from lowering the Pokémon's stats."
        default:
            name(locale: locale)
        }
    }
}
