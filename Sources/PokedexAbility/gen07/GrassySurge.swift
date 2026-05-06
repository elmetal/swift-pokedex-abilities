//
//  GrassySurge.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let grassySurge = GrassySurge.ability
}

enum GrassySurge: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "grassy-surge")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "グラスメイカー"
        default:
            "Grassy Surge"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "登場した時、場をグラスフィールドにする。"
        case (.vii, _):
            "When the Pokémon enters battle, it creates Grassy Terrain."
        default:
            name(locale: locale)
        }
    }
}
