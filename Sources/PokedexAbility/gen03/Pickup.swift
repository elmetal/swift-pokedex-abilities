//
//  Pickup.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let pickup = Pickup.ability
}

enum Pickup: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "pickup")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ものひろい"
        default:
            "Pickup"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "戦闘後、道具を持っていない時に道具を拾ってくることがある。"
        case (.iii, _):
            "After battle, the Pokémon may pick up an item if it is not holding one."
        default:
            name(locale: locale)
        }
    }
}
