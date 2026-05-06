//
//  Klutz.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let klutz = Klutz.ability
}

enum Klutz: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "klutz")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぶきよう"
        default:
            "Klutz"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "持っている道具の効果を使えない。"
        case (.iv, _):
            "The Pokémon cannot use the effects of its held item."
        default:
            name(locale: locale)
        }
    }
}
