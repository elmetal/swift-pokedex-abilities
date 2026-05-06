//
//  TeraShell.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as テラスシェル in Japanese.
    ///
    /// The localized name of this ability is `"Tera Shell"` in English and
    /// `"テラスシェル"` in Japanese.
    ///
    /// Use this value when you need to refer to Tera Shell by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.teraShell
    /// ```
    ///
    /// The ability's raw value is `"tera-shell"`.
    static let teraShell = TeraShell.ability
}

enum TeraShell: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "tera-shell")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "テラスシェル"
        default:
            "Tera Shell"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "HPが満タンの時、受ける攻撃技が効果いまひとつになる。"
        case (.ix, _):
            "When HP is full, damaging moves that hit the Pokémon are not very effective."
        default:
            name(locale: locale)
        }
    }
}
