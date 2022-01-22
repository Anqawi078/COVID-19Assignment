//
//  RestCountriesModel.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation

// MARK: - RestCountriesRESTCountriesModelElement
public struct RestCountriesRESTCountriesModelElement: Codable {
    public var name: RestCountriesName?
    public var tld: [String]?
    public var cca2: String?
    public var ccn3: String?
    public var cca3: String?
    public var cioc: String?
    public var independent: Bool?
    public var status: String?
    public var unMember: Bool?
    public var currencies: RestCountriesCurrencies?
    public var idd: RestCountriesIdd?
    public var capital: [String]?
    public var altSpellings: [String]?
    public var region: String?
    public var subregion: String?
    public var languages: RestCountriesLanguages?
    public var translations: RestCountriesTranslations?
    public var latlng: [Int]?
    public var landlocked: Bool?
    public var borders: [String]?
    public var area: Int?
    public var demonyms: RestCountriesDemonyms?
    public var flag: String?
    public var maps: RestCountriesMaps?
    public var population: Int?
    public var gini: RestCountriesGini?
    public var fifa: String?
    public var car: RestCountriesCar?
    public var timezones: [String]?
    public var continents: [String]?
    public var flags: RestCountriesCoatOfArms?
    public var coatOfArms: RestCountriesCoatOfArms?
    public var startOfWeek: String?
    public var capitalInfo: RestCountriesCapitalInfo?

    enum CodingKeys: String, CodingKey {
        case name
        case tld
        case cca2
        case ccn3
        case cca3
        case cioc
        case independent
        case status
        case unMember
        case currencies
        case idd
        case capital
        case altSpellings
        case region
        case subregion
        case languages
        case translations
        case latlng
        case landlocked
        case borders
        case area
        case demonyms
        case flag
        case maps
        case population
        case gini
        case fifa
        case car
        case timezones
        case continents
        case flags
        case coatOfArms
        case startOfWeek
        case capitalInfo
    }

    public init(name: RestCountriesName?, tld: [String]?, cca2: String?, ccn3: String?, cca3: String?, cioc: String?, independent: Bool?, status: String?, unMember: Bool?, currencies: RestCountriesCurrencies?, idd: RestCountriesIdd?, capital: [String]?, altSpellings: [String]?, region: String?, subregion: String?, languages: RestCountriesLanguages?, translations: RestCountriesTranslations?, latlng: [Int]?, landlocked: Bool?, borders: [String]?, area: Int?, demonyms: RestCountriesDemonyms?, flag: String?, maps: RestCountriesMaps?, population: Int?, gini: RestCountriesGini?, fifa: String?, car: RestCountriesCar?, timezones: [String]?, continents: [String]?, flags: RestCountriesCoatOfArms?, coatOfArms: RestCountriesCoatOfArms?, startOfWeek: String?, capitalInfo: RestCountriesCapitalInfo?) {
        self.name = name
        self.tld = tld
        self.cca2 = cca2
        self.ccn3 = ccn3
        self.cca3 = cca3
        self.cioc = cioc
        self.independent = independent
        self.status = status
        self.unMember = unMember
        self.currencies = currencies
        self.idd = idd
        self.capital = capital
        self.altSpellings = altSpellings
        self.region = region
        self.subregion = subregion
        self.languages = languages
        self.translations = translations
        self.latlng = latlng
        self.landlocked = landlocked
        self.borders = borders
        self.area = area
        self.demonyms = demonyms
        self.flag = flag
        self.maps = maps
        self.population = population
        self.gini = gini
        self.fifa = fifa
        self.car = car
        self.timezones = timezones
        self.continents = continents
        self.flags = flags
        self.coatOfArms = coatOfArms
        self.startOfWeek = startOfWeek
        self.capitalInfo = capitalInfo
    }
}

// MARK: - RestCountriesCapitalInfo
public struct RestCountriesCapitalInfo: Codable {
    public var latlng: [Double]?

    enum CodingKeys: String, CodingKey {
        case latlng
    }

    public init(latlng: [Double]?) {
        self.latlng = latlng
    }
}

// MARK: - RestCountriesCar
public struct RestCountriesCar: Codable {
    public var signs: [String]?
    public var side: String?

    enum CodingKeys: String, CodingKey {
        case signs
        case side
    }

    public init(signs: [String]?, side: String?) {
        self.signs = signs
        self.side = side
    }
}

// MARK: - RestCountriesCoatOfArms
public struct RestCountriesCoatOfArms: Codable {
    public var png: String?
    public var svg: String?

    enum CodingKeys: String, CodingKey {
        case png
        case svg
    }

    public init(png: String?, svg: String?) {
        self.png = png
        self.svg = svg
    }
}

// MARK: - RestCountriesCurrencies
public struct RestCountriesCurrencies: Codable {
    public var all: RestCountriesAll?

    enum CodingKeys: String, CodingKey {
        case all
    }

    public init(all: RestCountriesAll?) {
        self.all = all
    }
}

// MARK: - RestCountriesAll
public struct RestCountriesAll: Codable {
    public var name: String?
    public var symbol: String?

    enum CodingKeys: String, CodingKey {
        case name
        case symbol
    }

    public init(name: String?, symbol: String?) {
        self.name = name
        self.symbol = symbol
    }
}

// MARK: - RestCountriesDemonyms
public struct RestCountriesDemonyms: Codable {
    public var eng: RestCountriesEng?
    public var fra: RestCountriesEng?

    enum CodingKeys: String, CodingKey {
        case eng
        case fra
    }

    public init(eng: RestCountriesEng?, fra: RestCountriesEng?) {
        self.eng = eng
        self.fra = fra
    }
}

// MARK: - RestCountriesEng
public struct RestCountriesEng: Codable {
    public var f: String?
    public var m: String?

    enum CodingKeys: String, CodingKey {
        case f
        case m
    }

    public init(f: String?, m: String?) {
        self.f = f
        self.m = m
    }
}

// MARK: - RestCountriesGini
public struct RestCountriesGini: Codable {
    public var the2017: Double?

    enum CodingKeys: String, CodingKey {
        case the2017
    }

    public init(the2017: Double?) {
        self.the2017 = the2017
    }
}

// MARK: - RestCountriesIdd
public struct RestCountriesIdd: Codable {
    public var root: String?
    public var suffixes: [String]?

    enum CodingKeys: String, CodingKey {
        case root
        case suffixes
    }

    public init(root: String?, suffixes: [String]?) {
        self.root = root
        self.suffixes = suffixes
    }
}

// MARK: - RestCountriesLanguages
public struct RestCountriesLanguages: Codable {
    public var sqi: String?

    enum CodingKeys: String, CodingKey {
        case sqi
    }

    public init(sqi: String?) {
        self.sqi = sqi
    }
}

// MARK: - RestCountriesMaps
public struct RestCountriesMaps: Codable {
    public var googleMaps: String?
    public var openStreetMaps: String?

    enum CodingKeys: String, CodingKey {
        case googleMaps
        case openStreetMaps
    }

    public init(googleMaps: String?, openStreetMaps: String?) {
        self.googleMaps = googleMaps
        self.openStreetMaps = openStreetMaps
    }
}

// MARK: - RestCountriesName
public struct RestCountriesName: Codable {
    public var common: String?
    public var official: String?
    public var nativeName: RestCountriesNativeName?

    enum CodingKeys: String, CodingKey {
        case common
        case official
        case nativeName
    }

    public init(common: String?, official: String?, nativeName: RestCountriesNativeName?) {
        self.common = common
        self.official = official
        self.nativeName = nativeName
    }
}

// MARK: - RestCountriesNativeName
public struct RestCountriesNativeName: Codable {
    public var sqi: RestCountriesAra?

    enum CodingKeys: String, CodingKey {
        case sqi
    }

    public init(sqi: RestCountriesAra?) {
        self.sqi = sqi
    }
}

// MARK: - RestCountriesAra
public struct RestCountriesAra: Codable {
    public var official: String?
    public var common: String?

    enum CodingKeys: String, CodingKey {
        case official
        case common
    }

    public init(official: String?, common: String?) {
        self.official = official
        self.common = common
    }
}

// MARK: - RestCountriesTranslations
public struct RestCountriesTranslations: Codable {
    public var ara: RestCountriesAra?
    public var ces: RestCountriesAra?
    public var cym: RestCountriesAra?
    public var deu: RestCountriesAra?
    public var est: RestCountriesAra?
    public var fin: RestCountriesAra?
    public var fra: RestCountriesAra?
    public var hrv: RestCountriesAra?
    public var hun: RestCountriesAra?
    public var ita: RestCountriesAra?
    public var jpn: RestCountriesAra?
    public var kor: RestCountriesAra?
    public var nld: RestCountriesAra?
    public var per: RestCountriesAra?
    public var pol: RestCountriesAra?
    public var por: RestCountriesAra?
    public var rus: RestCountriesAra?
    public var slk: RestCountriesAra?
    public var spa: RestCountriesAra?
    public var swe: RestCountriesAra?
    public var urd: RestCountriesAra?
    public var zho: RestCountriesAra?

    enum CodingKeys: String, CodingKey {
        case ara
        case ces
        case cym
        case deu
        case est
        case fin
        case fra
        case hrv
        case hun
        case ita
        case jpn
        case kor
        case nld
        case per
        case pol
        case por
        case rus
        case slk
        case spa
        case swe
        case urd
        case zho
    }

    public init(ara: RestCountriesAra?, ces: RestCountriesAra?, cym: RestCountriesAra?, deu: RestCountriesAra?, est: RestCountriesAra?, fin: RestCountriesAra?, fra: RestCountriesAra?, hrv: RestCountriesAra?, hun: RestCountriesAra?, ita: RestCountriesAra?, jpn: RestCountriesAra?, kor: RestCountriesAra?, nld: RestCountriesAra?, per: RestCountriesAra?, pol: RestCountriesAra?, por: RestCountriesAra?, rus: RestCountriesAra?, slk: RestCountriesAra?, spa: RestCountriesAra?, swe: RestCountriesAra?, urd: RestCountriesAra?, zho: RestCountriesAra?) {
        self.ara = ara
        self.ces = ces
        self.cym = cym
        self.deu = deu
        self.est = est
        self.fin = fin
        self.fra = fra
        self.hrv = hrv
        self.hun = hun
        self.ita = ita
        self.jpn = jpn
        self.kor = kor
        self.nld = nld
        self.per = per
        self.pol = pol
        self.por = por
        self.rus = rus
        self.slk = slk
        self.spa = spa
        self.swe = swe
        self.urd = urd
        self.zho = zho
    }
}

public typealias RestCountriesRESTCountriesModel = [RestCountriesRESTCountriesModelElement]
