//
//  HugePower.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let hugePower = HugePower.ability
}

enum HugePower: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "huge-power")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ちからもち"
        default:
            "Huge Power"
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
