//
//  AirLock.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let airLock = AirLock.ability
}

enum AirLock: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "air-lock")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "エアロック"
        default:
            "Air Lock"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "場にいる間、天気の効果をなくす。"
        case (.iii, _):
            "All effects of weather are negated while the Pokémon is in battle."
        default:
            name(locale: locale)
        }
    }
}
