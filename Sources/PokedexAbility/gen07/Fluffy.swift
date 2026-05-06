//
//  Fluffy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as もふもふ in Japanese.
    ///
    /// The localized name of this ability is `"Fluffy"` in English and
    /// `"もふもふ"` in Japanese.
    ///
    /// Use this value when you need to refer to Fluffy by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.fluffy
    /// ```
    ///
    /// The ability's raw value is `"fluffy"`.
    static let fluffy = Fluffy.ability
}

enum Fluffy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "fluffy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "もふもふ"
        default:
            "Fluffy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "直接攻撃で受けるダメージが半分になるが、ほのおタイプの技で受けるダメージが2倍になる。"
        case (.vii, _):
            "Contact move damage is halved, but Fire-type move damage is doubled."
        default:
            name(locale: locale)
        }
    }
}
