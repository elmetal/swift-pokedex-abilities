//
//  Forecast.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let forecast = Forecast.ability
}

enum Forecast: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "forecast")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "てんきや"
        default:
            "Forecast"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "天気に応じてポワルンの姿とタイプが変わる。"
        case (.iii, _):
            "Castform changes form and type according to the weather."
        default:
            name(locale: locale)
        }
    }
}
