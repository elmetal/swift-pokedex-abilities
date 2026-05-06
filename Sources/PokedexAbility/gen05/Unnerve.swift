//
//  Unnerve.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let unnerve = Unnerve.ability
}

enum Unnerve: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "unnerve")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きんちょうかん"
        default:
            "Unnerve"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "相手はきのみを食べられなくなる。"
        case (.v, _):
            "Opposing Pokémon cannot eat Berries."
        default:
            name(locale: locale)
        }
    }
}
