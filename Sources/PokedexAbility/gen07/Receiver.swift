//
//  Receiver.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as レシーバー in Japanese.
    ///
    /// The localized name of this ability is `"Receiver"` in English and
    /// `"レシーバー"` in Japanese.
    ///
    /// Use this value when you need to refer to Receiver by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.receiver
    /// ```
    ///
    /// The ability's raw value is `"receiver"`.
    static let receiver = Receiver.ability
}

enum Receiver: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "receiver")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "レシーバー"
        default:
            "Receiver"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "味方が倒された時、その味方の特性を受け継ぐ。"
        case (.vii ... .ix, _):
            "When an ally is knocked out, the Pokémon copies that ally's Ability."
        default:
            name(locale: locale)
        }
    }
}
