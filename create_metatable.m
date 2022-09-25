
% Todo: create new project...

T = bot.fetchSessions('ophys');

sessionArray = nansen.metadata.bot.Session(T);

metaTable = nansen.metadata.MetaTable.new(sessionArray);

S = struct();
S.MetaTableName = metaTable.createDefaultName;
S.SavePath = nansen.config.project.ProjectManager.getProjectSubPath('MetaTable');
S.IsDefault = true;
S.IsMaster = true;

try
    metaTable.archive(S);
catch ME
    throwAsCaller(ME)
    % Todo: have some error handling here.
% %                 title = 'Could not save metadata table';
% %                 uialert(app.NansenSetupUIFigure, ME.message, title) 
end