//
//  MagmaArmor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let magmaArmor = MagmaArmor.ability
}

enum MagmaArmor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "magma-armor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マグマのよろい"
        default:
            "Magma Armor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "こおり状態にならない。"
        case (.iii, _):
            "The Pokémon cannot become frozen."
        default:
            name(locale: locale)
        }
    }
}
