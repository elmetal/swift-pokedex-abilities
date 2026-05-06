//
//  Electromorphosis.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as でんきにかえる in Japanese.
    ///
    /// The localized name of this ability is `"Electromorphosis"` in English and
    /// `"でんきにかえる"` in Japanese.
    ///
    /// Use this value when you need to refer to Electromorphosis by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.electromorphosis
    /// ```
    ///
    /// The ability's raw value is `"electromorphosis"`.
    static let electromorphosis = Electromorphosis.ability
}

enum Electromorphosis: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "electromorphosis")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "でんきにかえる"
        default:
            "Electromorphosis"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "攻撃を受けると、充電状態になる。"
        case (.ix, _):
            "When hit by an attack, the Pokémon becomes charged."
        default:
            name(locale: locale)
        }
    }
}
