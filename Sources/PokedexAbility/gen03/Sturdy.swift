//
//  Sturdy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let sturdy = Sturdy.ability
}

enum Sturdy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sturdy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "がんじょう"
        default:
            "Sturdy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "一撃必殺技を受けない。"
        case (.iii, _):
            "One-hit KO moves have no effect on the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
