//
//  ArenaTrap.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let arenaTrap = ArenaTrap.ability
}

enum ArenaTrap: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "arena-trap")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ありじごく"
        default:
            "Arena Trap"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "地面にいる相手は逃げたり交代したりできない。"
        case (.iii, _):
            "Grounded opposing Pokémon cannot flee or switch out."
        default:
            name(locale: locale)
        }
    }
}
