using SpacefarerService as service from '../../srv/spacefarer-service';
annotate service.Spacefarer with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'stardustCollection',
                Value : stardustCollection,
            },
            {
                $Type : 'UI.DataField',
                Label : 'wormholeNavigation',
                Value : wormholeNavigation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'originPlanet',
                Value : originPlanet,
            },
            {
                $Type : 'UI.DataField',
                Label : 'spacesuitColor',
                Value : spacesuitColor,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'stardustCollection',
            Value : stardustCollection,
        },
        {
            $Type : 'UI.DataField',
            Label : 'wormholeNavigation',
            Value : wormholeNavigation,
        },
        {
            $Type : 'UI.DataField',
            Label : 'originPlanet',
            Value : originPlanet,
        },
        {
            $Type : 'UI.DataField',
            Label : 'spacesuitColor',
            Value : spacesuitColor,
        },
    ],
);

annotate service.Spacefarer with {
    department @Common.ValueList : {
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
    }
};

annotate service.Spacefarer with {
    position @Common.ValueList : {
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
        ],
    }
};

