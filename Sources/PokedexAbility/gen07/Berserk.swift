//
//  Berserk.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ぎゃくじょう in Japanese.
    ///
    /// The localized name of this ability is `"Berserk"` in English and
    /// `"ぎゃくじょう"` in Japanese.
    ///
    /// Use this value when you need to refer to Berserk by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.berserk
    /// ```
    ///
    /// The ability's raw value is `"berserk"`.
    static let berserk = Berserk.ability
}

enum Berserk: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "berserk")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぎゃくじょう"
        default:
            "Berserk"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "攻撃でHPが半分以下になると、とくこうが1段階上がる。"
        case (.vii ... .ix, _):
            "When HP drops to half or less from an attack, Special Attack rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
