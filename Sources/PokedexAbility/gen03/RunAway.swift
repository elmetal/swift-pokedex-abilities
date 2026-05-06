//
//  RunAway.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let runAway = RunAway.ability
}

enum RunAway: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "run-away")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "にげあし"
        default:
            "Run Away"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "野生ポケモンとの戦闘から必ず逃げられる。"
        case (.iii, _):
            "The Pokémon can always flee from wild battles."
        default:
            name(locale: locale)
        }
    }
}
