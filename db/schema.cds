// Task 1 – Spacefarer Data Model
using { cuid, managed } from '@sap/cds/common';

entity Spacefarer: cuid, managed {
    stardustCollection: Integer;
    wormholeNavigation: Integer;
    originPlanet: String;
    spacesuitColor: String;
    department: Association to Departments;
    position: Association to Positions;
}

entity Departments: cuid, managed {
    name: String;
    positions: Association to many Positions on positions.department = $self;
}

entity Positions: cuid, managed {
    title: String;
    department: Association to Departments;
}