//
//  SuctionCups.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let suctionCups = SuctionCups.ability
}

enum SuctionCups: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "suction-cups")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きゅうばん"
        default:
            "Suction Cups"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手の技や道具で強制的に交代させられない。"
        case (.iii, _):
            "The Pokémon cannot be forced to switch out."
        default:
            name(locale: locale)
        }
    }
}
