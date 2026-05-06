//
//  Chlorophyll.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let chlorophyll = Chlorophyll.ability
}

enum Chlorophyll: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "chlorophyll")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ようりょくそ"
        default:
            "Chlorophyll"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "晴れの時、すばやさが2倍になる。"
        case (.iii, _):
            "During harsh sunlight, Speed is doubled."
        default:
            name(locale: locale)
        }
    }
}
