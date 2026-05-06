//
//  Illusion.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let illusion = Illusion.ability
}

enum Illusion: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "illusion")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "イリュージョン"
        default:
            "Illusion"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "ダメージを受けるまで、手持ちの最後のひんしでないポケモンの姿で登場する。"
        case (.v, _):
            "The Pokémon appears as the last conscious Pokémon in the party until it is damaged."
        default:
            name(locale: locale)
        }
    }
}
