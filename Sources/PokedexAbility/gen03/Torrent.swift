//
//  Torrent.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as げきりゅう in Japanese.
    ///
    /// The localized name of this ability is `"Torrent"` in English and
    /// `"げきりゅう"` in Japanese.
    ///
    /// Use this value when you need to refer to Torrent by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.torrent
    /// ```
    ///
    /// The ability's raw value is `"torrent"`.
    static let torrent = Torrent.ability
}

enum Torrent: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "torrent")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "げきりゅう"
        default:
            "Torrent"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "HPが1/3以下の時、みずタイプの攻撃技の威力が1.5倍になる。"
        case (.iii ... .ix, _):
            "When HP is 1/3 or less, Water-type attack moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
