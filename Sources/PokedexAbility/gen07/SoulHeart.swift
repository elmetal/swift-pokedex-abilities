//
//  SoulHeart.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let soulHeart = SoulHeart.ability
}

enum SoulHeart: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "soul-heart")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ソウルハート"
        default:
            "Soul-Heart"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "他のポケモンが倒れると、とくこうが1段階上がる。"
        case (.vii, _):
            "When another Pokémon faints, Special Attack rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
