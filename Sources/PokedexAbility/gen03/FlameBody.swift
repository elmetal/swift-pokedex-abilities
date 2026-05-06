//
//  FlameBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let flameBody = FlameBody.ability
}

enum FlameBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "flame-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ほのおのからだ"
        default:
            "Flame Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "直接攻撃を受けた時、30%の確率で相手をやけど状態にする。"
        case (.iii, _):
            "Contact with the Pokémon has a 30% chance to burn the attacker."
        default:
            name(locale: locale)
        }
    }
}
