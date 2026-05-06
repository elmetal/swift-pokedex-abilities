//
//  NaturalCure.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let naturalCure = NaturalCure.ability
}

enum NaturalCure: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "natural-cure")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しぜんかいふく"
        default:
            "Natural Cure"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "交代すると状態異常が治る。"
        case (.iii, _):
            "Status conditions are healed when the Pokémon switches out."
        default:
            name(locale: locale)
        }
    }
}
