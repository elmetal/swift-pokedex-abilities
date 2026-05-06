//
//  ZeroToHero.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let zeroToHero = ZeroToHero.ability
}

enum ZeroToHero: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "zero-to-hero")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マイティチェンジ"
        default:
            "Zero to Hero"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "交代するとマイティフォルムに変化する。"
        case (.ix, _):
            "The Pokémon transforms into its Hero Form when it switches out."
        default:
            name(locale: locale)
        }
    }
}
