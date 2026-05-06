//
//  BattleArmor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as カブトアーマー in Japanese.
    ///
    /// The localized name of this ability is `"Battle Armor"` in English and
    /// `"カブトアーマー"` in Japanese.
    ///
    /// Use this value when you need to refer to Battle Armor by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.battleArmor
    /// ```
    ///
    /// The ability's raw value is `"battle-armor"`.
    static let battleArmor = BattleArmor.ability
}

enum BattleArmor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "battle-armor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "カブトアーマー"
        default:
            "Battle Armor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手の攻撃が急所に当たらない。"
        case (.iii, _):
            "The Pokémon cannot be hit by critical hits."
        default:
            name(locale: locale)
        }
    }
}
