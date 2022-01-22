//
//  TrackingModel.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation

// MARK: - TrackingModel
public struct TrackingModel: Codable {
    public var dates: TrackingDates?
    public var metadata: TrackingMetadata?
    public var total: TrackingTotal?
    public var updatedAt: String?
    
    enum CodingKeys: String, CodingKey {
        case dates
        case metadata
        case total
        case updatedAt
    }
    
    public init(dates: TrackingDates?, metadata: TrackingMetadata?, total: TrackingTotal?, updatedAt: String?) {
        self.dates = dates
        self.metadata = metadata
        self.total = total
        self.updatedAt = updatedAt
    }
}

// MARK: - TrackingDates
public struct TrackingDates: Codable {
    public var the20201010: TrackingThe20201010?
    
    enum CodingKeys: String, CodingKey {
        case the20201010 = "2020-10-10"
    }
    
    public init(the20201010: TrackingThe20201010?) {
        self.the20201010 = the20201010
    }
}



// MARK: - TrackingThe20201010
public struct TrackingThe20201010: Codable {
    public var countries:  [String : TrackingCountries?]
    public var info: TrackingInfo?
    
    enum CodingKeys: String, CodingKey {
        case countries
        case info
    }
    
    public init(countries:  [String : TrackingCountries?], info: TrackingInfo?) {
        self.countries = countries
        self.info = info
    }
}

// MARK: - TrackingCountries
public struct TrackingCountries: Codable {
    
    public var countrieiy: TrackingTotal?
    
    enum CodingKeys: String, CodingKey {
        case countrieiy = "Total"
        
        
    }
    
    public init(countrieiy: TrackingTotal?) {
        
        self.countrieiy = countrieiy
        
    }
}

// MARK: - TrackingTotal
public struct TrackingTotal: Codable {
    public var date: String?
    public var id: String?
    public var links: [TrackingLink]?
    public var name: String?
    public var nameEs: String?
    public var nameIt: String?
    public var regions: [TrackingTotal]?
    public var source: String?
    public var todayConfirmed: Int?
    public var todayDeaths: Int?
    public var todayNewConfirmed: Int?
    public var todayNewDeaths: Int?
    public var todayNewOpenCases: Int?
    public var todayNewRecovered: Int?
    public var todayOpenCases: Int?
    public var todayRecovered: Int?
    public var todayVsYesterdayConfirmed: Double?
    public var todayVsYesterdayDeaths: Double?
    public var todayVsYesterdayOpenCases: Double?
    public var todayVsYesterdayRecovered: Double?
    public var yesterdayConfirmed: Int?
    public var yesterdayDeaths: Int?
    public var yesterdayOpenCases: Int?
    public var yesterdayRecovered: Int?
    public var subRegions: [TrackingSubRegion]?
    public var todayIntensiveCare: Int?
    public var todayNewIntensiveCare: Int?
    public var todayNewTotalHospitalisedPatients: Int?
    public var todayTotalHospitalisedPatients: Int?
    public var todayVsYesterdayIntensiveCare: Double?
    public var todayVsYesterdayTotalHospitalisedPatients: Double?
    public var yesterdayIntensiveCare: Int?
    public var yesterdayTotalHospitalisedPatients: Int?
    public var todayHospitalisedPatientsWithSymptoms: Int?
    public var todayNewHospitalisedPatientsWithSymptoms: Int?
    public var todayVsYesterdayHospitalisedPatientsWithSymptoms: JSONNull?
    public var yesterdayHospitalisedPatientsWithSymptoms: Int?
    public var todayNewTests: Int?
    public var todayTests: Int?
    public var todayVsYesterdayTests: Double?
    public var yesterdayTests: Int?
    public var rid: String?
    
    enum CodingKeys: String, CodingKey {
        case date
        case id
        case links
        case name
        case nameEs
        case nameIt
        case regions
        case source
        case todayConfirmed
        case todayDeaths
        case todayNewConfirmed
        case todayNewDeaths
        case todayNewOpenCases
        case todayNewRecovered
        case todayOpenCases
        case todayRecovered
        case todayVsYesterdayConfirmed
        case todayVsYesterdayDeaths
        case todayVsYesterdayOpenCases
        case todayVsYesterdayRecovered
        case yesterdayConfirmed
        case yesterdayDeaths
        case yesterdayOpenCases
        case yesterdayRecovered
        case subRegions
        case todayIntensiveCare
        case todayNewIntensiveCare
        case todayNewTotalHospitalisedPatients
        case todayTotalHospitalisedPatients
        case todayVsYesterdayIntensiveCare
        case todayVsYesterdayTotalHospitalisedPatients
        case yesterdayIntensiveCare
        case yesterdayTotalHospitalisedPatients
        case todayHospitalisedPatientsWithSymptoms
        case todayNewHospitalisedPatientsWithSymptoms
        case todayVsYesterdayHospitalisedPatientsWithSymptoms
        case yesterdayHospitalisedPatientsWithSymptoms
        case todayNewTests
        case todayTests
        case todayVsYesterdayTests
        case yesterdayTests
        case rid
    }
    
    public init(date: String?, id: String?, links: [TrackingLink]?, name: String?, nameEs: String?, nameIt: String?, regions: [TrackingTotal]?, source: String?, todayConfirmed: Int?, todayDeaths: Int?, todayNewConfirmed: Int?, todayNewDeaths: Int?, todayNewOpenCases: Int?, todayNewRecovered: Int?, todayOpenCases: Int?, todayRecovered: Int?, todayVsYesterdayConfirmed: Double?, todayVsYesterdayDeaths: Double?, todayVsYesterdayOpenCases: Double?, todayVsYesterdayRecovered: Double?, yesterdayConfirmed: Int?, yesterdayDeaths: Int?, yesterdayOpenCases: Int?, yesterdayRecovered: Int?, subRegions: [TrackingSubRegion]?, todayIntensiveCare: Int?, todayNewIntensiveCare: Int?, todayNewTotalHospitalisedPatients: Int?, todayTotalHospitalisedPatients: Int?, todayVsYesterdayIntensiveCare: Double?, todayVsYesterdayTotalHospitalisedPatients: Double?, yesterdayIntensiveCare: Int?, yesterdayTotalHospitalisedPatients: Int?, todayHospitalisedPatientsWithSymptoms: Int?, todayNewHospitalisedPatientsWithSymptoms: Int?, todayVsYesterdayHospitalisedPatientsWithSymptoms: JSONNull?, yesterdayHospitalisedPatientsWithSymptoms: Int?, todayNewTests: Int?, todayTests: Int?, todayVsYesterdayTests: Double?, yesterdayTests: Int?, rid: String?) {
        self.date = date
        self.id = id
        self.links = links
        self.name = name
        self.nameEs = nameEs
        self.nameIt = nameIt
        self.regions = regions
        self.source = source
        self.todayConfirmed = todayConfirmed
        self.todayDeaths = todayDeaths
        self.todayNewConfirmed = todayNewConfirmed
        self.todayNewDeaths = todayNewDeaths
        self.todayNewOpenCases = todayNewOpenCases
        self.todayNewRecovered = todayNewRecovered
        self.todayOpenCases = todayOpenCases
        self.todayRecovered = todayRecovered
        self.todayVsYesterdayConfirmed = todayVsYesterdayConfirmed
        self.todayVsYesterdayDeaths = todayVsYesterdayDeaths
        self.todayVsYesterdayOpenCases = todayVsYesterdayOpenCases
        self.todayVsYesterdayRecovered = todayVsYesterdayRecovered
        self.yesterdayConfirmed = yesterdayConfirmed
        self.yesterdayDeaths = yesterdayDeaths
        self.yesterdayOpenCases = yesterdayOpenCases
        self.yesterdayRecovered = yesterdayRecovered
        self.subRegions = subRegions
        self.todayIntensiveCare = todayIntensiveCare
        self.todayNewIntensiveCare = todayNewIntensiveCare
        self.todayNewTotalHospitalisedPatients = todayNewTotalHospitalisedPatients
        self.todayTotalHospitalisedPatients = todayTotalHospitalisedPatients
        self.todayVsYesterdayIntensiveCare = todayVsYesterdayIntensiveCare
        self.todayVsYesterdayTotalHospitalisedPatients = todayVsYesterdayTotalHospitalisedPatients
        self.yesterdayIntensiveCare = yesterdayIntensiveCare
        self.yesterdayTotalHospitalisedPatients = yesterdayTotalHospitalisedPatients
        self.todayHospitalisedPatientsWithSymptoms = todayHospitalisedPatientsWithSymptoms
        self.todayNewHospitalisedPatientsWithSymptoms = todayNewHospitalisedPatientsWithSymptoms
        self.todayVsYesterdayHospitalisedPatientsWithSymptoms = todayVsYesterdayHospitalisedPatientsWithSymptoms
        self.yesterdayHospitalisedPatientsWithSymptoms = yesterdayHospitalisedPatientsWithSymptoms
        self.todayNewTests = todayNewTests
        self.todayTests = todayTests
        self.todayVsYesterdayTests = todayVsYesterdayTests
        self.yesterdayTests = yesterdayTests
        self.rid = rid
    }
}

// MARK: - TrackingLink
public struct TrackingLink: Codable {
    public var href: String?
    public var rel: String?
    public var type: String?
    
    enum CodingKeys: String, CodingKey {
        case href
        case rel
        case type
    }
    
    public init(href: String?, rel: String?, type: String?) {
        self.href = href
        self.rel = rel
        self.type = type
    }
}

// MARK: - TrackingSubRegion
public struct TrackingSubRegion: Codable {
    public var date: String?
    public var id: String?
    public var name: String?
    public var nameEs: String?
    public var nameIt: String?
    public var source: String?
    public var todayConfirmed: Int?
    public var todayDeaths: Int?
    public var todayNewConfirmed: Int?
    public var todayNewDeaths: Int?
    public var todayNewRecovered: Int?
    public var todayRecovered: Int?
    public var todayVsYesterdayConfirmed: Double?
    public var todayVsYesterdayDeaths: Double?
    public var todayVsYesterdayRecovered: Double?
    public var yesterdayConfirmed: Int?
    public var yesterdayDeaths: Int?
    public var yesterdayRecovered: Int?
    public var todayIntensiveCare: Int?
    public var todayNewIntensiveCare: Int?
    public var todayNewTotalHospitalisedPatients: Int?
    public var todayTotalHospitalisedPatients: Int?
    public var todayVsYesterdayIntensiveCare: Double?
    public var todayVsYesterdayTotalHospitalisedPatients: Double?
    public var yesterdayIntensiveCare: Int?
    public var yesterdayTotalHospitalisedPatients: Int?
    
    enum CodingKeys: String, CodingKey {
        case date
        case id
        case name
        case nameEs
        case nameIt
        case source
        case todayConfirmed
        case todayDeaths
        case todayNewConfirmed
        case todayNewDeaths
        case todayNewRecovered
        case todayRecovered
        case todayVsYesterdayConfirmed
        case todayVsYesterdayDeaths
        case todayVsYesterdayRecovered
        case yesterdayConfirmed
        case yesterdayDeaths
        case yesterdayRecovered
        case todayIntensiveCare
        case todayNewIntensiveCare
        case todayNewTotalHospitalisedPatients
        case todayTotalHospitalisedPatients
        case todayVsYesterdayIntensiveCare
        case todayVsYesterdayTotalHospitalisedPatients
        case yesterdayIntensiveCare
        case yesterdayTotalHospitalisedPatients
    }
    
    public init(date: String?, id: String?, name: String?, nameEs: String?, nameIt: String?, source: String?, todayConfirmed: Int?, todayDeaths: Int?, todayNewConfirmed: Int?, todayNewDeaths: Int?, todayNewRecovered: Int?, todayRecovered: Int?, todayVsYesterdayConfirmed: Double?, todayVsYesterdayDeaths: Double?, todayVsYesterdayRecovered: Double?, yesterdayConfirmed: Int?, yesterdayDeaths: Int?, yesterdayRecovered: Int?, todayIntensiveCare: Int?, todayNewIntensiveCare: Int?, todayNewTotalHospitalisedPatients: Int?, todayTotalHospitalisedPatients: Int?, todayVsYesterdayIntensiveCare: Double?, todayVsYesterdayTotalHospitalisedPatients: Double?, yesterdayIntensiveCare: Int?, yesterdayTotalHospitalisedPatients: Int?) {
        self.date = date
        self.id = id
        self.name = name
        self.nameEs = nameEs
        self.nameIt = nameIt
        self.source = source
        self.todayConfirmed = todayConfirmed
        self.todayDeaths = todayDeaths
        self.todayNewConfirmed = todayNewConfirmed
        self.todayNewDeaths = todayNewDeaths
        self.todayNewRecovered = todayNewRecovered
        self.todayRecovered = todayRecovered
        self.todayVsYesterdayConfirmed = todayVsYesterdayConfirmed
        self.todayVsYesterdayDeaths = todayVsYesterdayDeaths
        self.todayVsYesterdayRecovered = todayVsYesterdayRecovered
        self.yesterdayConfirmed = yesterdayConfirmed
        self.yesterdayDeaths = yesterdayDeaths
        self.yesterdayRecovered = yesterdayRecovered
        self.todayIntensiveCare = todayIntensiveCare
        self.todayNewIntensiveCare = todayNewIntensiveCare
        self.todayNewTotalHospitalisedPatients = todayNewTotalHospitalisedPatients
        self.todayTotalHospitalisedPatients = todayTotalHospitalisedPatients
        self.todayVsYesterdayIntensiveCare = todayVsYesterdayIntensiveCare
        self.todayVsYesterdayTotalHospitalisedPatients = todayVsYesterdayTotalHospitalisedPatients
        self.yesterdayIntensiveCare = yesterdayIntensiveCare
        self.yesterdayTotalHospitalisedPatients = yesterdayTotalHospitalisedPatients
    }
}

// MARK: - TrackingItaly
public struct TrackingItaly: Codable {
    public var date: String?
    public var id: String?
    public var links: [TrackingLink]?
    public var name: String?
    public var nameEs: String?
    public var nameIt: String?
    public var regions: [TrackingItaly]?
    public var source: String?
    public var todayConfirmed: Int?
    public var todayDeaths: Int?
    public var todayHomeConfinement: Int?
    public var todayHospitalisedPatientsWithSymptoms: Int?
    public var todayIntensiveCare: Int?
    public var todayNewConfirmed: Int?
    public var todayNewDeaths: Int?
    public var todayNewHomeConfinement: Int?
    public var todayNewHospitalisedPatientsWithSymptoms: Int?
    public var todayNewIntensiveCare: Int?
    public var todayNewOpenCases: Int?
    public var todayNewRecovered: Int?
    public var todayNewTests: Int?
    public var todayNewTotalHospitalisedPatients: Int?
    public var todayOpenCases: Int?
    public var todayRecovered: Int?
    public var todayTests: Int?
    public var todayTotalHospitalisedPatients: Int?
    public var todayVsYesterdayConfirmed: Double?
    public var todayVsYesterdayDeaths: Double?
    public var todayVsYesterdayHomeConfinement: Double?
    public var todayVsYesterdayHospitalisedPatientsWithSymptoms: Double?
    public var todayVsYesterdayIntensiveCare: Double?
    public var todayVsYesterdayOpenCases: Double?
    public var todayVsYesterdayRecovered: Double?
    public var todayVsYesterdayTests: Double?
    public var todayVsYesterdayTotalHospitalisedPatients: Double?
    public var yesterdayConfirmed: Int?
    public var yesterdayDeaths: Int?
    public var yesterdayHomeConfinement: Int?
    public var yesterdayHospitalisedPatientsWithSymptoms: Int?
    public var yesterdayIntensiveCare: Int?
    public var yesterdayOpenCases: Int?
    public var yesterdayRecovered: Int?
    public var yesterdayTests: Int?
    public var yesterdayTotalHospitalisedPatients: Int?
    public var subRegions: [JSONAny]?
    
    enum CodingKeys: String, CodingKey {
        case date
        case id
        case links
        case name
        case nameEs
        case nameIt
        case regions
        case source
        case todayConfirmed
        case todayDeaths
        case todayHomeConfinement
        case todayHospitalisedPatientsWithSymptoms
        case todayIntensiveCare
        case todayNewConfirmed
        case todayNewDeaths
        case todayNewHomeConfinement
        case todayNewHospitalisedPatientsWithSymptoms
        case todayNewIntensiveCare
        case todayNewOpenCases
        case todayNewRecovered
        case todayNewTests
        case todayNewTotalHospitalisedPatients
        case todayOpenCases
        case todayRecovered
        case todayTests
        case todayTotalHospitalisedPatients
        case todayVsYesterdayConfirmed
        case todayVsYesterdayDeaths
        case todayVsYesterdayHomeConfinement
        case todayVsYesterdayHospitalisedPatientsWithSymptoms
        case todayVsYesterdayIntensiveCare
        case todayVsYesterdayOpenCases
        case todayVsYesterdayRecovered
        case todayVsYesterdayTests
        case todayVsYesterdayTotalHospitalisedPatients
        case yesterdayConfirmed
        case yesterdayDeaths
        case yesterdayHomeConfinement
        case yesterdayHospitalisedPatientsWithSymptoms
        case yesterdayIntensiveCare
        case yesterdayOpenCases
        case yesterdayRecovered
        case yesterdayTests
        case yesterdayTotalHospitalisedPatients
        case subRegions
    }
    
    public init(date: String?, id: String?, links: [TrackingLink]?, name: String?, nameEs: String?, nameIt: String?, regions: [TrackingItaly]?, source: String?, todayConfirmed: Int?, todayDeaths: Int?, todayHomeConfinement: Int?, todayHospitalisedPatientsWithSymptoms: Int?, todayIntensiveCare: Int?, todayNewConfirmed: Int?, todayNewDeaths: Int?, todayNewHomeConfinement: Int?, todayNewHospitalisedPatientsWithSymptoms: Int?, todayNewIntensiveCare: Int?, todayNewOpenCases: Int?, todayNewRecovered: Int?, todayNewTests: Int?, todayNewTotalHospitalisedPatients: Int?, todayOpenCases: Int?, todayRecovered: Int?, todayTests: Int?, todayTotalHospitalisedPatients: Int?, todayVsYesterdayConfirmed: Double?, todayVsYesterdayDeaths: Double?, todayVsYesterdayHomeConfinement: Double?, todayVsYesterdayHospitalisedPatientsWithSymptoms: Double?, todayVsYesterdayIntensiveCare: Double?, todayVsYesterdayOpenCases: Double?, todayVsYesterdayRecovered: Double?, todayVsYesterdayTests: Double?, todayVsYesterdayTotalHospitalisedPatients: Double?, yesterdayConfirmed: Int?, yesterdayDeaths: Int?, yesterdayHomeConfinement: Int?, yesterdayHospitalisedPatientsWithSymptoms: Int?, yesterdayIntensiveCare: Int?, yesterdayOpenCases: Int?, yesterdayRecovered: Int?, yesterdayTests: Int?, yesterdayTotalHospitalisedPatients: Int?, subRegions: [JSONAny]?) {
        self.date = date
        self.id = id
        self.links = links
        self.name = name
        self.nameEs = nameEs
        self.nameIt = nameIt
        self.regions = regions
        self.source = source
        self.todayConfirmed = todayConfirmed
        self.todayDeaths = todayDeaths
        self.todayHomeConfinement = todayHomeConfinement
        self.todayHospitalisedPatientsWithSymptoms = todayHospitalisedPatientsWithSymptoms
        self.todayIntensiveCare = todayIntensiveCare
        self.todayNewConfirmed = todayNewConfirmed
        self.todayNewDeaths = todayNewDeaths
        self.todayNewHomeConfinement = todayNewHomeConfinement
        self.todayNewHospitalisedPatientsWithSymptoms = todayNewHospitalisedPatientsWithSymptoms
        self.todayNewIntensiveCare = todayNewIntensiveCare
        self.todayNewOpenCases = todayNewOpenCases
        self.todayNewRecovered = todayNewRecovered
        self.todayNewTests = todayNewTests
        self.todayNewTotalHospitalisedPatients = todayNewTotalHospitalisedPatients
        self.todayOpenCases = todayOpenCases
        self.todayRecovered = todayRecovered
        self.todayTests = todayTests
        self.todayTotalHospitalisedPatients = todayTotalHospitalisedPatients
        self.todayVsYesterdayConfirmed = todayVsYesterdayConfirmed
        self.todayVsYesterdayDeaths = todayVsYesterdayDeaths
        self.todayVsYesterdayHomeConfinement = todayVsYesterdayHomeConfinement
        self.todayVsYesterdayHospitalisedPatientsWithSymptoms = todayVsYesterdayHospitalisedPatientsWithSymptoms
        self.todayVsYesterdayIntensiveCare = todayVsYesterdayIntensiveCare
        self.todayVsYesterdayOpenCases = todayVsYesterdayOpenCases
        self.todayVsYesterdayRecovered = todayVsYesterdayRecovered
        self.todayVsYesterdayTests = todayVsYesterdayTests
        self.todayVsYesterdayTotalHospitalisedPatients = todayVsYesterdayTotalHospitalisedPatients
        self.yesterdayConfirmed = yesterdayConfirmed
        self.yesterdayDeaths = yesterdayDeaths
        self.yesterdayHomeConfinement = yesterdayHomeConfinement
        self.yesterdayHospitalisedPatientsWithSymptoms = yesterdayHospitalisedPatientsWithSymptoms
        self.yesterdayIntensiveCare = yesterdayIntensiveCare
        self.yesterdayOpenCases = yesterdayOpenCases
        self.yesterdayRecovered = yesterdayRecovered
        self.yesterdayTests = yesterdayTests
        self.yesterdayTotalHospitalisedPatients = yesterdayTotalHospitalisedPatients
        self.subRegions = subRegions
    }
}

// MARK: - TrackingInfo
public struct TrackingInfo: Codable {
    public var date: String?
    public var dateGeneration: String?
    public var yesterday: String?
    
    enum CodingKeys: String, CodingKey {
        case date
        case dateGeneration
        case yesterday
    }
    
    public init(date: String?, dateGeneration: String?, yesterday: String?) {
        self.date = date
        self.dateGeneration = dateGeneration
        self.yesterday = yesterday
    }
}

// MARK: - TrackingMetadata
public struct TrackingMetadata: Codable {
    public var by: String?
    public var url: [String]?
    
    enum CodingKeys: String, CodingKey {
        case by
        case url
    }
    
    public init(by: String?, url: [String]?) {
        self.by = by
        self.url = url
    }
}


