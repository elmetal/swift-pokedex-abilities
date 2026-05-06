//
//  Hustle.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let hustle = Hustle.ability
}

enum Hustle: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "hustle")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はりきり"
        default:
            "Hustle"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "こうげきが1.5倍になるが、物理技の命中率が0.8倍になる。"
        case (.iii, _):
            "Attack is 1.5x, but physical moves' accuracy is 0.8x."
        default:
            name(locale: locale)
        }
    }
}
