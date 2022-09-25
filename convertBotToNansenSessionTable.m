function Tout = convertBotToNansenSessionTable(Tin)



% Create subject id:
Tout = Tin;

nansenColNames = {'subjectID', 'sessionID', 'Date', 'Time', 'Protocol', 'Description'};
nansenColNames = fliplr(nansenColNames);

for i = 1:numel(nansenColNames)
    
    switch nansenColNames{i}
        
        case 'subjectID'
            thisCol = table(Tin.specimen_id, 'VariableNames', nansenColNames(i) );

        case 'sessionID'
            thisCol = table(Tin.id, 'VariableNames', nansenColNames(i));
            
        case 'Date'
            thisCol = table(Tin.date_of_acquisition, 'VariableNames', nansenColNames(i) );

        case 'Time'
            thisCol = table(Tin.date_of_acquisition, 'VariableNames', nansenColNames(i));
            
        case 'Protocol'
            thisCol = table(Tin.stimulus_name, 'VariableNames', nansenColNames(i));

        case 'Description'
            thisCol = table(Tin.name, 'VariableNames', nansenColNames(i));

    end
    
    Tout = [thisCol, Tout];
    
end
