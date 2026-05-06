//
//  Stall.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let stall = Stall.ability
}

enum Stall: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "stall")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "あとだし"
        default:
            "Stall"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "同じ優先度の中で必ず後に行動する。"
        case (.iv, _):
            "The Pokémon moves last within its priority bracket."
        default:
            name(locale: locale)
        }
    }
}
