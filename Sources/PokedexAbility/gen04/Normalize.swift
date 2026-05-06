//
//  Normalize.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let normalize = Normalize.ability
}

enum Normalize: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "normalize")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ノーマルスキン"
        default:
            "Normalize"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "自分の技がノーマルタイプになる。"
        case (.iv, _):
            "The Pokémon's moves become Normal type."
        default:
            name(locale: locale)
        }
    }
}
