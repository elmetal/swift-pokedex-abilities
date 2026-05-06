//
//  PurifyingSalt.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let purifyingSalt = PurifyingSalt.ability
}

enum PurifyingSalt: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "purifying-salt")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きよめのしお"
        default:
            "Purifying Salt"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "状態異常にならず、ゴーストタイプの技で受けるダメージが半分になる。"
        case (.ix, _):
            "Status conditions are prevented, and damage from Ghost-type moves is halved."
        default:
            name(locale: locale)
        }
    }
}
