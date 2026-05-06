//
//  SnowWarning.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let snowWarning = SnowWarning.ability
}

enum SnowWarning: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "snow-warning")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ゆきふらし"
        default:
            "Snow Warning"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "登場した時、天気を永続するあられにする。"
        case (.iv, _):
            "When the Pokémon enters battle, it makes hail continue indefinitely."
        default:
            name(locale: locale)
        }
    }
}
