//
//  TangledFeet.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let tangledFeet = TangledFeet.ability
}

enum TangledFeet: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "tangled-feet")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ちどりあし"
        default:
            "Tangled Feet"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "こんらん状態の時、回避率が2倍になる。"
        case (.iv, _):
            "When confused, evasion is doubled."
        default:
            name(locale: locale)
        }
    }
}
