//
//  Limber.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let limber = Limber.ability
}

enum Limber: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "limber")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じゅうなん"
        default:
            "Limber"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "まひ状態にならない。"
        case (.iii, _):
            "The Pokémon cannot become paralyzed."
        default:
            name(locale: locale)
        }
    }
}
