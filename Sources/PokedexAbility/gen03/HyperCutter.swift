//
//  HyperCutter.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let hyperCutter = HyperCutter.ability
}

enum HyperCutter: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "hyper-cutter")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かいりきバサミ"
        default:
            "Hyper Cutter"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手にこうげきを下げられない。"
        case (.iii, _):
            "Prevents other Pokémon from lowering the Pokémon's Attack."
        default:
            name(locale: locale)
        }
    }
}
