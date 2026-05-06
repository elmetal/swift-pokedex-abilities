//
//  GoodAsGold.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let goodAsGold = GoodAsGold.ability
}

enum GoodAsGold: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "good-as-gold")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "おうごんのからだ"
        default:
            "Good as Gold"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "変化技を受けない。"
        case (.ix, _):
            "Status moves have no effect on the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
