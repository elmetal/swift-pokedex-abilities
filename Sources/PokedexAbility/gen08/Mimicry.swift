//
//  Mimicry.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let mimicry = Mimicry.ability
}

enum Mimicry: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "mimicry")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぎたい"
        default:
            "Mimicry"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "フィールドに応じて自分のタイプが変わる。"
        case (.viii, _):
            "The Pokémon's type changes according to the terrain."
        default:
            name(locale: locale)
        }
    }
}
