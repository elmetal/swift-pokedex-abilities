//
//  SpicySpray.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let spicySpray = SpicySpray.ability
}

enum SpicySpray: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "spicy-spray")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "とびだすハバネロ"
        default:
            "Spicy Spray"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.champions, .japanese):
            "技でダメージを受けた時、相手をやけど状態にする。"
        case (.champions, _):
            "When the Pokémon takes damage from a move, it burns the attacker."
        default:
            name(locale: locale)
        }
    }
}
