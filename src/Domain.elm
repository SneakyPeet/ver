module Domain (domains, Domains, Domain, Theme, Group, Person) where

type alias Name : String


type alias Person =
  { name : Name
  , themes : List Theme
  , coreTheme : Theme
  }


type alias Team =
  { name : Name
  , teamMembers : List Person
  }


type Group
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


type alias Domain =
  { domain : Group
  , themes : List Theme
  }


type alias Domains = List Domain


domains : List Domain
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
