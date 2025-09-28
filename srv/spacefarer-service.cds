using db from '../db/schema';

service SpacefarerService @(requires:'authenticated-user') {
    /*@restrict: [
        { grant: 'READ', to: 'SpacefarerViewer' },
        { grant: 'WRITE', to: 'SpacefarerAdmin' }
    ]*/
    @odata.draft.enabled
    entity Spacefarer as projection on db.Spacefarer;
    entity Departments as projection on db.Departments;
    entity Positions as projection on db.Positions;
}