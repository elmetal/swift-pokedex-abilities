//
//  NaturalCure.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as しぜんかいふく in Japanese.
    ///
    /// The localized name of this ability is `"Natural Cure"` in English and
    /// `"しぜんかいふく"` in Japanese.
    ///
    /// Use this value when you need to refer to Natural Cure by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.naturalCure
    /// ```
    ///
    /// The ability's raw value is `"natural-cure"`.
    static let naturalCure = NaturalCure.ability
}

enum NaturalCure: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "natural-cure")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しぜんかいふく"
        default:
            "Natural Cure"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "交代すると状態異常が治る。"
        case (.iii ... .ix, _):
            "Status conditions are healed when the Pokémon switches out."
        default:
            name(locale: locale)
        }
    }
}
