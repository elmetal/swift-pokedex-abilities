//
//  MyceliumMight.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きんしのちから in Japanese.
    ///
    /// The localized name of this ability is `"Mycelium Might"` in English and
    /// `"きんしのちから"` in Japanese.
    ///
    /// Use this value when you need to refer to Mycelium Might by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.myceliumMight
    /// ```
    ///
    /// The ability's raw value is `"mycelium-might"`.
    static let myceliumMight = MyceliumMight.ability
}

enum MyceliumMight: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "mycelium-might")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きんしのちから"
        default:
            "Mycelium Might"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "変化技は同じ優先度の中で後に出るが、相手の特性を無視する。"
        case (.ix, _):
            "Status moves are used last within their priority bracket but ignore the target's Ability."
        default:
            name(locale: locale)
        }
    }
}
