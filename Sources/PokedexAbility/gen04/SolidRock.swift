//
//  SolidRock.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let solidRock = SolidRock.ability
}

enum SolidRock: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "solid-rock")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ハードロック"
        default:
            "Solid Rock"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "効果抜群の技で受けるダメージが0.75倍になる。"
        case (.iv, _):
            "Damage from super-effective moves is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
