//
//  KeenEye.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let keenEye = KeenEye.ability
}

enum KeenEye: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "keen-eye")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "するどいめ"
        default:
            "Keen Eye"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手に命中率を下げられない。"
        case (.iii, _):
            "Prevents other Pokémon from lowering the Pokémon's accuracy."
        default:
            name(locale: locale)
        }
    }
}
