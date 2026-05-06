//
//  Rivalry.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let rivalry = Rivalry.ability
}

enum Rivalry: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rivalry")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "とうそうしん"
        default:
            "Rivalry"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "相手が同じ性別なら技の威力が1.25倍、違う性別なら0.75倍になる。"
        case (.iv, _):
            "Attack damage is 1.25x against the same gender and 0.75x against the opposite gender."
        default:
            name(locale: locale)
        }
    }
}
