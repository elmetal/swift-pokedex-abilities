//
//  MegaLauncher.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as メガランチャー in Japanese.
    ///
    /// The localized name of this ability is `"Mega Launcher"` in English and
    /// `"メガランチャー"` in Japanese.
    ///
    /// Use this value when you need to refer to Mega Launcher by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.megaLauncher
    /// ```
    ///
    /// The ability's raw value is `"mega-launcher"`.
    static let megaLauncher = MegaLauncher.ability
}

enum MegaLauncher: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "mega-launcher")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "メガランチャー"
        default:
            "Mega Launcher"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "波動系の技の威力が1.5倍になる。"
        case (.vi, _):
            "Aura and pulse moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
