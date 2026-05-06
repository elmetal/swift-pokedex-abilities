//
//  Synchronize.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as シンクロ in Japanese.
    ///
    /// The localized name of this ability is `"Synchronize"` in English and
    /// `"シンクロ"` in Japanese.
    ///
    /// Use this value when you need to refer to Synchronize by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.synchronize
    /// ```
    ///
    /// The ability's raw value is `"synchronize"`.
    static let synchronize = Synchronize.ability
}

enum Synchronize: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "synchronize")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "シンクロ"
        default:
            "Synchronize"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手からどく・まひ・やけどにされた時、相手も同じ状態異常にする。"
        case (.iii, _):
            "When burned, paralyzed, or poisoned by another Pokémon, the same status is inflicted on that Pokémon."
        default:
            name(locale: locale)
        }
    }
}
