//
//  PastelVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let pastelVeil = PastelVeil.ability
}

enum PastelVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "pastel-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "パステルベール"
        default:
            "Pastel Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "自分と味方はどく・もうどく状態にならない。"
        case (.viii, _):
            "The Pokémon and its allies cannot be poisoned."
        default:
            name(locale: locale)
        }
    }
}
