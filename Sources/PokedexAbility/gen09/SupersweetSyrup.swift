//
//  SupersweetSyrup.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かんろなミツ in Japanese.
    ///
    /// The localized name of this ability is `"Supersweet Syrup"` in English and
    /// `"かんろなミツ"` in Japanese.
    ///
    /// Use this value when you need to refer to Supersweet Syrup by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.supersweetSyrup
    /// ```
    ///
    /// The ability's raw value is `"supersweet-syrup"`.
    static let supersweetSyrup = SupersweetSyrup.ability
}

enum SupersweetSyrup: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "supersweet-syrup")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かんろなミツ"
        default:
            "Supersweet Syrup"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "登場した時、相手の回避率を1段階下げる。"
        case (.ix, _):
            "When the Pokémon enters battle, opposing Pokémon's evasion falls by one stage."
        default:
            name(locale: locale)
        }
    }
}
