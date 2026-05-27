//
//  ShellArmor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as シェルアーマー in Japanese.
    ///
    /// The localized name of this ability is `"Shell Armor"` in English and
    /// `"シェルアーマー"` in Japanese.
    ///
    /// Use this value when you need to refer to Shell Armor by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.shellArmor
    /// ```
    ///
    /// The ability's raw value is `"shell-armor"`.
    static let shellArmor = ShellArmor.ability
}

enum ShellArmor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "shell-armor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "シェルアーマー"
        default:
            "Shell Armor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "相手の攻撃が急所に当たらない。"
        case (.iii ... .ix, _):
            "The Pokémon cannot be hit by critical hits."
        default:
            name(locale: locale)
        }
    }
}
