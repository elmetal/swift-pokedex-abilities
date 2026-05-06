//
//  LeafGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let leafGuard = LeafGuard.ability
}

enum LeafGuard: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "leaf-guard")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "リーフガード"
        default:
            "Leaf Guard"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "晴れの時、状態異常にならない。"
        case (.iv, _):
            "During harsh sunlight, the Pokémon cannot be affected by status conditions."
        default:
            name(locale: locale)
        }
    }
}
