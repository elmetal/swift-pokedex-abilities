//
//  Pressure.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let pressure = Pressure.ability
}

enum Pressure: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "pressure")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "プレッシャー"
        default:
            "Pressure"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "自分を対象にした相手の技のPP消費が2になる。"
        case (.iii, _):
            "Moves targeting the Pokémon use 2 PP instead of 1."
        default:
            name(locale: locale)
        }
    }
}
