namespace db;

using { cuid, managed } from '@sap/cds/common';

entity Spacefarer: cuid, managed {
    stardustCollection: Integer @mandatory;
    wormholeNavigation: Integer @mandatory;
    originPlanet: String;
    spacesuitColor: String;
    department: Association to Departments;
    position: Association to Positions;
}

entity Departments: cuid, managed {
    name: String(50);
    positions: Association to many Positions on positions.department = $self;
}

entity Positions: cuid, managed {
    title: String(50);
    department: Association to Departments;
}