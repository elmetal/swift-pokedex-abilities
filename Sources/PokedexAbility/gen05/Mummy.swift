//
//  Mummy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let mummy = Mummy.ability
}

enum Mummy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "mummy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ミイラ"
        default:
            "Mummy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "直接攻撃を受けた時、相手の特性をミイラにする。"
        case (.v, _):
            "Contact with the Pokémon changes the attacker's Ability to Mummy."
        default:
            name(locale: locale)
        }
    }
}
