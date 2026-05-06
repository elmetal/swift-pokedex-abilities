//
//  ScreenCleaner.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as バリアフリー in Japanese.
    ///
    /// The localized name of this ability is `"Screen Cleaner"` in English and
    /// `"バリアフリー"` in Japanese.
    ///
    /// Use this value when you need to refer to Screen Cleaner by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.screenCleaner
    /// ```
    ///
    /// The ability's raw value is `"screen-cleaner"`.
    static let screenCleaner = ScreenCleaner.ability
}

enum ScreenCleaner: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "screen-cleaner")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "バリアフリー"
        default:
            "Screen Cleaner"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "登場した時、場の壁の効果を消す。"
        case (.viii, _):
            "When the Pokémon enters battle, barriers on both sides are removed."
        default:
            name(locale: locale)
        }
    }
}
