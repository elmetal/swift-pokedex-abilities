//
//  PerishBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ほろびのボディ in Japanese.
    ///
    /// The localized name of this ability is `"Perish Body"` in English and
    /// `"ほろびのボディ"` in Japanese.
    ///
    /// Use this value when you need to refer to Perish Body by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.perishBody
    /// ```
    ///
    /// The ability's raw value is `"perish-body"`.
    static let perishBody = PerishBody.ability
}

enum PerishBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "perish-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ほろびのボディ"
        default:
            "Perish Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "直接攻撃を受けると、お互いに3ターン後にひんしになる。交代すると解除される。"
        case (.viii ... .ix, _):
            "When hit by a contact move, both Pokémon faint after three turns unless they switch out."
        default:
            name(locale: locale)
        }
    }
}
