//
//  ZenMode.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let zenMode = ZenMode.ability
}

enum ZenMode: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "zen-mode")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ダルマモード"
        default:
            "Zen Mode"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "ターン終了時、ヒヒダルマのHPが半分以下なら姿が変わる。"
        case (.v, _):
            "At the end of a turn, Darmanitan changes form if its HP is half or less."
        default:
            name(locale: locale)
        }
    }
}
