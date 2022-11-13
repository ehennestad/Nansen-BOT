function getDemoProjects()
%getDemoProjects Download demo projects and add to nansen

    saveFolder = fullfile(userpath, 'NansenBOTDemoProjects');
    if ~isfolder(saveFolder); mkdir(saveFolder); end

    ephysProjectUrl = 'https://github.com/ehennestad/Nansen-Bot-Demo/raw/main/BOT_EPhys.zip';
    ophysProjectUrl = 'https://github.com/ehennestad/Nansen-Bot-Demo/raw/main/BOT_OPhys.zip';

    ephysFilepathZip = fullfile(saveFolder, 'BOT_EPhys.zip');
    ophysFilepathZip = fullfile(saveFolder, 'BOT_OPhys.zip');

    fprintf('Please wait, downloading Ephys Demo Project...\n')
    websave(ephysFilepathZip, ephysProjectUrl);
    unzip(ephysFilepathZip, saveFolder)
    delete(ephysFilepathZip)

    fprintf('Please wait, downloading Ophys Demo Project...\n')
    websave(ophysFilepathZip, ophysProjectUrl);
    unzip(ophysFilepathZip, saveFolder)
    delete(ophysFilepathZip)

    fprintf('Finished download\n')

    addpath(genpath(saveFolder))
    fprintf('Added projects to MATLABs savepath\n')

    pm = nansen.ProjectManager;
    pm.addExistingProject(fullfile(saveFolder, 'BOT_EPhys', 'nansen_project_configuration.mat'))
    pm.addExistingProject(fullfile(saveFolder, 'BOT_OPhys', 'nansen_project_configuration.mat'))
    fprintf('Added bot demo projects to nansen\n')
    fprintf('Run nansen.setup from commandline to install addons\n')
    fprintf('Run nansen from commandline to browse demo projects\n')
end