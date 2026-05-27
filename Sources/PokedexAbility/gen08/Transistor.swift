//
//  Transistor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as トランジスタ in Japanese.
    ///
    /// The localized name of this ability is `"Transistor"` in English and
    /// `"トランジスタ"` in Japanese.
    ///
    /// Use this value when you need to refer to Transistor by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.transistor
    /// ```
    ///
    /// The ability's raw value is `"transistor"`.
    static let transistor = Transistor.ability
}

enum Transistor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "transistor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "トランジスタ"
        default:
            "Transistor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "でんきタイプの技の威力が1.5倍になる。"
        case (.viii ... .ix, _):
            "Electric-type moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
