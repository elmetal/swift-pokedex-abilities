//
//  Scrappy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let scrappy = Scrappy.ability
}

enum Scrappy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "scrappy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きもったま"
        default:
            "Scrappy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "ノーマル・かくとうタイプの技がゴーストタイプに当たる。"
        case (.iv, _):
            "Normal- and Fighting-type moves can hit Ghost-type Pokémon."
        default:
            name(locale: locale)
        }
    }
}
