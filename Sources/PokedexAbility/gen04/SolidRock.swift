//
//  SolidRock.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ハードロック in Japanese.
    ///
    /// The localized name of this ability is `"Solid Rock"` in English and
    /// `"ハードロック"` in Japanese.
    ///
    /// Use this value when you need to refer to Solid Rock by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.solidRock
    /// ```
    ///
    /// The ability's raw value is `"solid-rock"`.
    static let solidRock = SolidRock.ability
}

enum SolidRock: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "solid-rock")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ハードロック"
        default:
            "Solid Rock"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "効果抜群の技で受けるダメージが0.75倍になる。"
        case (.iv, _):
            "Damage from super-effective moves is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
