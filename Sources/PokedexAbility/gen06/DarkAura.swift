//
//  DarkAura.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ダークオーラ in Japanese.
    ///
    /// The localized name of this ability is `"Dark Aura"` in English and
    /// `"ダークオーラ"` in Japanese.
    ///
    /// Use this value when you need to refer to Dark Aura by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.darkAura
    /// ```
    ///
    /// The ability's raw value is `"dark-aura"`.
    static let darkAura = DarkAura.ability
}

enum DarkAura: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dark-aura")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ダークオーラ"
        default:
            "Dark Aura"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "すべてのポケモンのあくタイプの技の威力が1.33倍になる。"
        case (.vi ... .ix, _):
            "Dark-type moves used by any Pokémon have 1.33x power."
        default:
            name(locale: locale)
        }
    }
}
