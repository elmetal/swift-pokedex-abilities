//
//  MagnetPull.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let magnetPull = MagnetPull.ability
}

enum MagnetPull: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "magnet-pull")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じりょく"
        default:
            "Magnet Pull"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手のはがねタイプのポケモンは逃げたり交代したりできない。"
        case (.iii, _):
            "Steel-type opposing Pokémon cannot flee or switch out."
        default:
            name(locale: locale)
        }
    }
}
