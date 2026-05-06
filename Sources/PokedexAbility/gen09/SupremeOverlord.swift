//
//  SupremeOverlord.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as そうだいしょう in Japanese.
    ///
    /// The localized name of this ability is `"Supreme Overlord"` in English and
    /// `"そうだいしょう"` in Japanese.
    ///
    /// Use this value when you need to refer to Supreme Overlord by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.supremeOverlord
    /// ```
    ///
    /// The ability's raw value is `"supreme-overlord"`.
    static let supremeOverlord = SupremeOverlord.ability
}

enum SupremeOverlord: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "supreme-overlord")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "そうだいしょう"
        default:
            "Supreme Overlord"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "倒れた味方の数に応じて、こうげきととくこうが上がる。"
        case (.ix, _):
            "Attack and Special Attack are boosted for each fainted ally."
        default:
            name(locale: locale)
        }
    }
}
