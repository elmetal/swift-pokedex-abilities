//
//  Competitive.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let competitive = Competitive.ability
}

enum Competitive: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "competitive")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かちき"
        default:
            "Competitive"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "相手に能力を下げられた時、とくこうが2段階上がる。"
        case (.vi, _):
            "When another Pokémon lowers one of this Pokémon's stats, Special Attack rises by two stages."
        default:
            name(locale: locale)
        }
    }
}
