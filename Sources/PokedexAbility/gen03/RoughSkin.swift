//
//  RoughSkin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let roughSkin = RoughSkin.ability
}

enum RoughSkin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rough-skin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "さめはだ"
        default:
            "Rough Skin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "直接攻撃を受けた時、相手に相手の最大HPの1/16のダメージを与える。"
        case (.iii, _):
            "Contact with the Pokémon damages the attacker by 1/16 of its maximum HP."
        default:
            name(locale: locale)
        }
    }
}
