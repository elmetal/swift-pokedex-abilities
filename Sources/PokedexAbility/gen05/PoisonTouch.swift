//
//  PoisonTouch.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let poisonTouch = PoisonTouch.ability
}

enum PoisonTouch: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "poison-touch")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくしゅ"
        default:
            "Poison Touch"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "直接攻撃の技を使った時、30%の確率で相手をどく状態にする。"
        case (.v, _):
            "Contact moves used by the Pokémon have a 30% chance to poison the target."
        default:
            name(locale: locale)
        }
    }
}
