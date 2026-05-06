//
//  Multitype.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as マルチタイプ in Japanese.
    ///
    /// The localized name of this ability is `"Multitype"` in English and
    /// `"マルチタイプ"` in Japanese.
    ///
    /// Use this value when you need to refer to Multitype by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.multitype
    /// ```
    ///
    /// The ability's raw value is `"multitype"`.
    static let multitype = Multitype.ability
}

enum Multitype: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "multitype")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マルチタイプ"
        default:
            "Multitype"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "持っているプレートに応じてタイプが変わる。"
        case (.iv, _):
            "The Pokémon's type changes according to the Plate it holds."
        default:
            name(locale: locale)
        }
    }
}
