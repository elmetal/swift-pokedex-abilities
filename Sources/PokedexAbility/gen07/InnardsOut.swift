//
//  InnardsOut.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let innardsOut = InnardsOut.ability
}

enum InnardsOut: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "innards-out")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "とびだすなかみ"
        default:
            "Innards Out"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "攻撃でひんし状態にされた時、最後に減ったHP分のダメージを相手に与える。"
        case (.vii, _):
            "When the Pokémon is knocked out by an attack, the attacker takes damage equal to the HP lost."
        default:
            name(locale: locale)
        }
    }
}
