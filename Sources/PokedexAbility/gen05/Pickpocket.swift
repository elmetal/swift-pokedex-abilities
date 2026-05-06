//
//  Pickpocket.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let pickpocket = Pickpocket.ability
}

enum Pickpocket: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "pickpocket")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "わるいてぐせ"
        default:
            "Pickpocket"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "直接攻撃を受けた時、自分が道具を持っていなければ相手の持ち物を奪う。"
        case (.v, _):
            "When hit by a contact move, the Pokémon steals the attacker's held item if it has none."
        default:
            name(locale: locale)
        }
    }
}
