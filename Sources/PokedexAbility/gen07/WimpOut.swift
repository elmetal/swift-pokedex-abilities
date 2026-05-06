//
//  WimpOut.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let wimpOut = WimpOut.ability
}

enum WimpOut: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "wimp-out")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "にげごし"
        default:
            "Wimp Out"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "HPが半分以下になると交代する。"
        case (.vii, _):
            "When HP drops to half or less, the Pokémon switches out."
        default:
            name(locale: locale)
        }
    }
}
