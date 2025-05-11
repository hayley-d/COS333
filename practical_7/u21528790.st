"Define FamilyMember"
Object subclass: FamilyMember [
    | expenses savings |

    FamilyMember class >> newWithExpenses: exp [
        ^ self new initializeWithExpenses: exp
    ]

    FamilyMember class >> newDefault [
        ^ self new initializeDefault
    ]

    initializeWithExpenses: exp [
        expenses := exp.
        savings := 0.
    ]

    initializeDefault [
        expenses := 0.
        savings := 0.
    ]

    expenses [
        ^ expenses
    ]

    savings [
        ^ savings
    ]

    monthEnd [
        savings := savings - expenses.
    ]
]

"Define Teenager"
FamilyMember subclass: Teenager [
    | pocketMoney |

    Teenager class >> newWithPocket: pm expenses: exp [
        ^ self new initializeWithPocket: pm expenses: exp
    ]

    initializeWithPocket: pm expenses: exp [
        pocketMoney := pm.
        super initializeWithExpenses: exp.
    ]

    monthEnd [
        savings := savings + pocketMoney.
        super monthEnd.
    ]
]

"Define Adult"
FamilyMember subclass: Adult [
    | salary interest |

    Adult class >> newWithSalary: sal interest: int expenses: exp [
        ^ self new initializeWithSalary: sal interest: int expenses: exp
    ]

    initializeWithSalary: sal interest: int expenses: exp [
        salary := sal.
        interest := int.
        super initializeWithExpenses: exp.
    ]

    monthEnd [
        savings := savings + (savings * interest / 100) + salary.
        super monthEnd.
    ]
]

Object subclass: Family [
    | members count |

    Family class >> new [
        ^ super new initialize
    ]

    initialize [
        members := Array new: 2.
        count := 0.
        ^ self
    ]

    addFamilyMember: member [
        count >= 2 ifTrue: [ Error signal: 'Only two members allowed.' ].
        count := count + 1.
        members at: count put: member.
    ]

    payDay [
        1 to: count do: [ :i |
            (members at: i) monthEnd.
        ].
    ]

    printSavings [
        1 to: count do: [ :i |
            | m |
            m := members at: i.
            Transcript show: m class name; show: ': '; show: m savings printString; nl.
        ].
    ]
]


"Test Code"
| fam teen adult |
fam := Family new.

teen := Teenager newWithPocket: 50.0 expenses: 0.
adult := Adult newWithSalary: 9000.0 interest: 0.5 expenses: 0.

fam addFamilyMember: teen.
fam addFamilyMember: adult.

fam payDay.
fam printSavings.

fam payDay.
fam printSavings.

