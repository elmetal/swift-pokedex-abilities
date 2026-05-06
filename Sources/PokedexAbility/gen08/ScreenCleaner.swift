//
//  ScreenCleaner.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let screenCleaner = ScreenCleaner.ability
}

enum ScreenCleaner: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "screen-cleaner")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "バリアフリー"
        default:
            "Screen Cleaner"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "登場した時、場の壁の効果を消す。"
        case (.viii, _):
            "When the Pokémon enters battle, barriers on both sides are removed."
        default:
            name(locale: locale)
        }
    }
}
