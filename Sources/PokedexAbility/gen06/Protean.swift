//
//  Protean.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as へんげんじざい in Japanese.
    ///
    /// The localized name of this ability is `"Protean"` in English and
    /// `"へんげんじざい"` in Japanese.
    ///
    /// Use this value when you need to refer to Protean by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.protean
    /// ```
    ///
    /// The ability's raw value is `"protean"`.
    static let protean = Protean.ability
}

enum Protean: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "protean")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "へんげんじざい"
        default:
            "Protean"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "技を使う前に、自分のタイプがその技と同じタイプになる。"
        case (.vi ... .ix, _):
            "Before the Pokémon uses a move, it changes to that move's type."
        default:
            name(locale: locale)
        }
    }
}
