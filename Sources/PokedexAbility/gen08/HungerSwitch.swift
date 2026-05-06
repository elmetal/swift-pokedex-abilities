//
//  HungerSwitch.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let hungerSwitch = HungerSwitch.ability
}

enum HungerSwitch: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "hunger-switch")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はらぺこスイッチ"
        default:
            "Hunger Switch"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "毎ターン終了時、モルペコがまんぷくもようとはらぺこもようを切り替える。"
        case (.viii, _):
            "At the end of each turn, Morpeko changes between Full Belly Mode and Hangry Mode."
        default:
            name(locale: locale)
        }
    }
}
