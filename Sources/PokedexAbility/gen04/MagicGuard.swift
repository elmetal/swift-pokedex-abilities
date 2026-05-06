//
//  MagicGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let magicGuard = MagicGuard.ability
}

enum MagicGuard: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "magic-guard")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マジックガード"
        default:
            "Magic Guard"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "直接攻撃以外ではダメージを受けない。"
        case (.iv, _):
            "The Pokémon takes damage only from direct attacks."
        default:
            name(locale: locale)
        }
    }
}
