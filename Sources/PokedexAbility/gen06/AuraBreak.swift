//
//  AuraBreak.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let auraBreak = AuraBreak.ability
}

enum AuraBreak: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "aura-break")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "オーラブレイク"
        default:
            "Aura Break"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "オーラの特性の効果を逆にする。"
        case (.vi, _):
            "The effects of aura Abilities are reversed."
        default:
            name(locale: locale)
        }
    }
}
