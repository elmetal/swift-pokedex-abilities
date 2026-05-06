//
//  LingeringAroma.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as とれないにおい in Japanese.
    ///
    /// The localized name of this ability is `"Lingering Aroma"` in English and
    /// `"とれないにおい"` in Japanese.
    ///
    /// Use this value when you need to refer to Lingering Aroma by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.lingeringAroma
    /// ```
    ///
    /// The ability's raw value is `"lingering-aroma"`.
    static let lingeringAroma = LingeringAroma.ability
}

enum LingeringAroma: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "lingering-aroma")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "とれないにおい"
        default:
            "Lingering Aroma"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "直接攻撃を受けた時、相手の特性をとれないにおいにする。"
        case (.ix, _):
            "Contact with the Pokémon changes the attacker's Ability to Lingering Aroma."
        default:
            name(locale: locale)
        }
    }
}
