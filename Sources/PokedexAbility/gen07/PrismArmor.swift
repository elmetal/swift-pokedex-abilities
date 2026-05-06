//
//  PrismArmor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let prismArmor = PrismArmor.ability
}

enum PrismArmor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "prism-armor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "プリズムアーマー"
        default:
            "Prism Armor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "効果抜群の技で受けるダメージが0.75倍になる。"
        case (.vii, _):
            "Damage from super-effective moves is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
