module Domain (Person, Team, Domain, Theme, DomainThemes, domains, themeDomainMap ) where


import Dict exposing (Dict)


type alias Name = String


type alias Person =
  { name : Name
  , themes : List Theme
  , coreTheme : Theme
  }


type alias Team =
  { name : Name
  , teamMembers : List Person
  }


type Domain
  = Executing
  | Influencing
  | RelationBuilding
  | StrategicThinking


type Theme
  = Achiever
  | Activator
  | Adaptability
  | Analytical
  | Arranger
  | Belief
  | Command
  | Communication
  | Competition
  | Connectedness
  | Consistency
  | Context
  | Deliberative
  | Developer
  | Discipline
  | Empathy
  | Focus
  | Futuristic
  | Harmony
  | Ideation
  | Includer
  | Individualization
  | Input
  | Intellection
  | Learner
  | Maximizer
  | Positivity
  | Relator
  | Responsibility
  | Restorative
  | SelfAssurance
  | Significance
  | Strategic
  | Woo


type alias DomainThemes =
  { domain : Domain
  , themes : List Theme
  }


domains : List DomainThemes
domains =
  [ { domain = Executing
    , themes =
      [ Achiever
      , Arranger
      , Belief
      , Consistency
      , Deliberative
      , Discipline
      , Focus
      , Responsibility
      , Restorative
      ]
    }
  , { domain = Influencing
    , themes =
      [ Activator
      , Command
      , Communication
      , Competition
      , Maximizer
      , SelfAssurance
      , Significance
      , Woo
      ]
    }
  , { domain = RelationBuilding
    , themes =
      [ Adaptability
      , Developer
      , Connectedness
      , Empathy
      , Harmony
      , Includer
      , Individualization
      , Positivity
      , Relator
      ]
    }
  , { domain = StrategicThinking
    , themes =
      [ Analytical
      , Context
      , Futuristic
      , Ideation
      , Input
      , Intellection
      , Learner
      , Strategic
      ]
    }
  ]


themeDomainMap : List (Theme, Domain)
themeDomainMap
  = List.map makeThemeDomainMap domains
  |> List.concat


makeThemeDomainMap : DomainThemes -> List (Theme, Domain)
makeThemeDomainMap domainTheme
  = flattenDomainThemes domainTheme.domain domainTheme.themes []


flattenDomainThemes : Domain -> List Theme -> List (Theme, Domain) -> List (Theme, Domain)
flattenDomainThemes domain themes mapping
  = case themes of
    [] ->
      mapping

    first :: rest ->
      (first, domain) :: mapping
      |> flattenDomainThemes domain rest
