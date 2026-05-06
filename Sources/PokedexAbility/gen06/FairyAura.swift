//
//  FairyAura.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as フェアリーオーラ in Japanese.
    ///
    /// The localized name of this ability is `"Fairy Aura"` in English and
    /// `"フェアリーオーラ"` in Japanese.
    ///
    /// Use this value when you need to refer to Fairy Aura by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.fairyAura
    /// ```
    ///
    /// The ability's raw value is `"fairy-aura"`.
    static let fairyAura = FairyAura.ability
}

enum FairyAura: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "fairy-aura")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "フェアリーオーラ"
        default:
            "Fairy Aura"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "すべてのポケモンのフェアリータイプの技の威力が1.33倍になる。"
        case (.vi, _):
            "Fairy-type moves used by any Pokémon have 1.33x power."
        default:
            name(locale: locale)
        }
    }
}
