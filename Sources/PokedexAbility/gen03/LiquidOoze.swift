//
//  LiquidOoze.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let liquidOoze = LiquidOoze.ability
}

enum LiquidOoze: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "liquid-ooze")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ヘドロえき"
        default:
            "Liquid Ooze"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "HPを吸収する技を受けた時、相手は回復せず、その分のダメージを受ける。"
        case (.iii, _):
            "HP-draining moves damage the user instead of healing it."
        default:
            name(locale: locale)
        }
    }
}
