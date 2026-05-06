//
//  Intimidate.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let intimidate = Intimidate.ability
}

enum Intimidate: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "intimidate")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いかく"
        default:
            "Intimidate"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "登場した時、相手のこうげきを1段階下げる。"
        case (.iii, _):
            "When the Pokémon enters battle, opposing Pokémon's Attack falls by one stage."
        default:
            name(locale: locale)
        }
    }
}
