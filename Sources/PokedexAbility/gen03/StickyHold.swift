//
//  StickyHold.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let stickyHold = StickyHold.ability
}

enum StickyHold: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sticky-hold")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ねんちゃく"
        default:
            "Sticky Hold"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手に持ち物を奪われたり、失ったりしない。"
        case (.iii, _):
            "The Pokémon's held item cannot be taken or removed by other Pokémon."
        default:
            name(locale: locale)
        }
    }
}
