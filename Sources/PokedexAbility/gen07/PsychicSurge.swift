//
//  PsychicSurge.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let psychicSurge = PsychicSurge.ability
}

enum PsychicSurge: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "psychic-surge")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "サイコメイカー"
        default:
            "Psychic Surge"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "登場した時、場をサイコフィールドにする。"
        case (.vii, _):
            "When the Pokémon enters battle, it creates Psychic Terrain."
        default:
            name(locale: locale)
        }
    }
}
