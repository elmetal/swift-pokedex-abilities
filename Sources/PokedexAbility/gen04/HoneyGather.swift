//
//  HoneyGather.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let honeyGather = HoneyGather.ability
}

enum HoneyGather: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "honey-gather")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "みつあつめ"
        default:
            "Honey Gather"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "戦闘後、あまいミツを拾ってくることがある。"
        case (.iv, _):
            "After battle, the Pokémon may pick up Honey."
        default:
            name(locale: locale)
        }
    }
}
