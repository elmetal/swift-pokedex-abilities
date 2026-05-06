//
//  Drizzle.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let drizzle = Drizzle.ability
}

enum Drizzle: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "drizzle")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "あめふらし"
        default:
            "Drizzle"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "登場した時、天気を永続する雨にする。"
        case (.iii, _):
            "When the Pokémon enters battle, it makes rain continue indefinitely."
        default:
            name(locale: locale)
        }
    }
}
