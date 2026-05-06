//
//  MistySurge.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let mistySurge = MistySurge.ability
}

enum MistySurge: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "misty-surge")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ミストメイカー"
        default:
            "Misty Surge"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "登場した時、場をミストフィールドにする。"
        case (.vii, _):
            "When the Pokémon enters battle, it creates Misty Terrain."
        default:
            name(locale: locale)
        }
    }
}
