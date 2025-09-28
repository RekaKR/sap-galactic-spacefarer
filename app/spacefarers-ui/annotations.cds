using SpacefarerService as service from '../../srv/spacefarer-service';

annotate service.Spacefarer with @(
    UI.FieldGroup #CosmicSkills : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Stardust Collection',
                Value : stardustCollection,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Wormhole Navigation',
                Value : wormholeNavigation,
            },
        ],
    },
    UI.FieldGroup #Identity : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Origin Planet',
                Value : originPlanet,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Spacesuit Color',
                Value : spacesuitColor,
            },
        ],
    },
    UI.FieldGroup #Assignment : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Department',
                Value : department_ID
            },
            {
                $Type : 'UI.DataField',
                Label : 'Position',
                Value : position_ID
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Facet1',
            Label : 'Cosmic Skills',
            Target : '@UI.FieldGroup#CosmicSkills',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Facet2',
            Label : 'Identity',
            Target : '@UI.FieldGroup#Identity',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Facet3',
            Label : 'Assignment',
            Target : '@UI.FieldGroup#Assignment',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Stardust Collection',
            Value : stardustCollection,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Wormhole Navigation',
            Value : wormholeNavigation,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Origin Planet',
            Value : originPlanet,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Spacesuit Color',
            Value : spacesuitColor,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Department',
            Value : department_ID
        },
        {
            $Type : 'UI.DataField',
            Label : 'Position',
            Value : position_ID
        },
    ],
);

annotate service.Spacefarer with {
    department @Common.Text : department.name @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Departments',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : department_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    };

    position @Common.Text : position.title @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Positions',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : position_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'title',
            },
            {
                $Type : 'Common.ValueListParameterIn',
                LocalDataProperty : department_ID,
                ValueListProperty : 'department_ID',
            },
        ],
    };
};
