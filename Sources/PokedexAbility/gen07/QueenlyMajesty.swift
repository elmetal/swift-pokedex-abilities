//
//  QueenlyMajesty.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let queenlyMajesty = QueenlyMajesty.ability
}

enum QueenlyMajesty: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "queenly-majesty")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じょおうのいげん"
        default:
            "Queenly Majesty"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "相手は自分や味方に先制技を出せない。"
        case (.vii, _):
            "Opposing Pokémon cannot use priority moves against the Pokémon or its allies."
        default:
            name(locale: locale)
        }
    }
}
