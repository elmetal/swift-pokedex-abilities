//
//  Static.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as せいでんき in Japanese.
    ///
    /// The localized name of this ability is `"Static"` in English and
    /// `"せいでんき"` in Japanese.
    ///
    /// Use this value when you need to refer to Static by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.`static`
    /// ```
    ///
    /// The ability's raw value is `"static"`.
    static let `static` = Static.ability

    /// The Pokémon ability known as せいでんき in Japanese.
    ///
    /// The localized name of this ability is `"Static"` in English and
    /// `"せいでんき"` in Japanese.
    ///
    /// Use this value when you need to refer to Static by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.staticAbility
    /// ```
    ///
    /// The ability's raw value is `"static"`.
    static let staticAbility = Static.ability
}

enum Static: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "static")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "せいでんき"
        default:
            "Static"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "直接攻撃を受けた時、30%の確率で相手をまひ状態にする。"
        case (.iii ... .ix, _):
            "Contact with the Pokémon has a 30% chance to paralyze the attacker."
        default:
            name(locale: locale)
        }
    }
}
