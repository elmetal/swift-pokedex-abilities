//
//  CudChew.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はんすう in Japanese.
    ///
    /// The localized name of this ability is `"Cud Chew"` in English and
    /// `"はんすう"` in Japanese.
    ///
    /// Use this value when you need to refer to Cud Chew by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.cudChew
    /// ```
    ///
    /// The ability's raw value is `"cud-chew"`.
    static let cudChew = CudChew.ability
}

enum CudChew: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "cud-chew")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はんすう"
        default:
            "Cud Chew"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "きのみを食べた次のターン終了時、もう一度同じきのみを食べる。"
        case (.ix, _):
            "After eating a Berry, the Pokémon eats it again at the end of the next turn."
        default:
            name(locale: locale)
        }
    }
}
