//
//  Aftermath.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let aftermath = Aftermath.ability
}

enum Aftermath: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "aftermath")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ゆうばく"
        default:
            "Aftermath"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "直接攻撃でひんし状態にされた時、相手に相手の最大HPの1/4のダメージを与える。"
        case (.iv, _):
            "If contact from another Pokémon knocks this Pokémon out, the attacker loses 1/4 of its maximum HP."
        default:
            name(locale: locale)
        }
    }
}
