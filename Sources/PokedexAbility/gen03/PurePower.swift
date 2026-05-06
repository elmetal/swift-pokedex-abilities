//
//  PurePower.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let purePower = PurePower.ability
}

enum PurePower: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "pure-power")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ヨガパワー"
        default:
            "Pure Power"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "こうげきが2倍になる。"
        case (.iii, _):
            "Attack is doubled."
        default:
            name(locale: locale)
        }
    }
}
