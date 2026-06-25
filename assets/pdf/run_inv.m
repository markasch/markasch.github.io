function [outputs] = run_inv(handles,hObject,port_inv)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RUN_INV_1.0                                                             %
% =========                                                               %
% function [outputs] = run_inv(inputs)                                    %
%                                                                         %
% Routine d'inversion principale (appelé par le 4S)                       %
%                                                                         %
%                                                                         %
% ENTREES :                                                               %
% =========                                                               %
%  ParamInv, qui contient :                                               %
%                                                                         %
%  inv_type   = 0 - inversion donnees synthetiques (experience jumelle)   %
%             = 1 - inversion donnees reelles                             %
%  inv_flag   = 1 - inversion de vitesse de compression                   %
%             = 2 - inversion de rho, c, alpha                            %
%             = 3 - inversion de la geometrie instrumentale               %
%  gonogo     =                                                           %
%             =                                                           %
%  HydroVec   = vecteur de numéros d'hydros à utiliser dans l'inversion   %
%                                                                         %
%  port_inv   = numéro de port du serveur d'INVERSION                     %
%                                                                         %
%  sock = structure de configuration de RAYSON                            %
%    sock.url_rayson  = url du socket                                     %
%    sock.port_rayson = numero de port                                    %
%    sock.nom_config  = nom du fichier de configuration de RAYSON         %
%                                                                         %
% SORTIES :                                                               %
% =========                                                               %
%                                                                         %
%                                                                         %
% METHODE :                                                               %
% =========                                                               %
% - modèle fourni/calculé par RAYSON                                      %
% - minimisation de mismatch par ASSA (Adaptive Simplex Simulated         % 
%   Annealing)                                                            %
%                                                                         %
%                                                                         %
% ROUTINES APPELEES :                                                     %
% ===================                                                     %
%                                                                         %
% Exemples d'usage :                                                      %
% ===================                                                     %
%    run_inv(0,1) - test, donnees synthetiques, (c_b)                     %
%    run_inv(0,2) - test, donnees synthetiques, (rho, c, alpha)           %
%                                                                         %
%                                                                         %
%                                                                         %
% Version history :                                                       %
% - 01/09/07 - experiences jumelles ou les "mesures" sont generees par    %
%              RAYSON et l'on cherche a les reproduire a partir de        %
%              valeurs initiales quelconques  (Vers. 0p1)                 %
% - 05/11/07 - commuication avec le 4S   (Vers. 1p0)                      %
%              avec option inversion synthetique                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% global ha hO % handles from GUI
%clear all ; close all; % nettoyage
global ParamInv
% extraire données de ParamInv
inv_type = ParamInv.inv_type;
inv_flag = ParamInv.inv_flag;
gonogo   = ParamInv.gonogo;
HydroVec = ParamInv.HydroVec;

myhelpdlg('Envoyer nouveau(x) ping(s) du 4S','4S Ping');

test_4S = 2;
if inv_type == 1
    test_4S = 1;
    %test_4S = menu('Présence de 4S ? ',' Yes','No'); % a placer dans le GUI
end

if inv_type == 0
    % donnees synthetiques generees par Rayson
    % Initialisation du socket RAYSON
    obj.ip='127.0.0.1';
    obj.port='5001';
    obj.nomfenetre='test_stereo.ray1d';
    con = 0; test_4S = 2; % data = 0;
    run_calcul(con,obj,inv_type,inv_flag,test_4S,handles);
elseif inv_type == 1 && test_4S == 2
    % Donnees fournies par le 4S dans un fichier
    % Initialisation du socket RAYSON
    load -mat 'sig_mes.dat'
    obj = sig_mes; clear sig_mes;
    obj.ip='127.0.0.1'; % pour rayson
    obj.port='5001';    % pour rayson
    obj.nomfenetre='A1_020324_101715.ray1d';
    con = 0; % data = 0;
    run_calcul(con,obj,inv_type,inv_flag,test,handles);
elseif inv_type == 1 && test_4S == 1
    % Donnees fournies par le 4S
    % Initialisation du socket 4S
    %if (nargin<3); port_inv = 6666; end% port par defaut
    port_inv = 6666;
    sock=pnet('tcpsocket',port_inv);
    if(sock==-1); error('Le port TCP %d n''est pas libre',port_inv); end
    pnet(sock,'setreadtimeout',1);
    disp(sprintf('\nInversion lancée sur le port %d (en attente de START...)',port_inv));
    disp('... pour arreter : ctrl-C puis pnet(''closeall'') ...'); disp(' ');
    while (1) %Boucle infinie du serveur HTTP    
        % Initilialisation de la connection
        con=pnet(sock,'tcplisten');
        while (con==-1), % pas de connection
            con=pnet(sock,'tcplisten');
        end
        [ip,port]=pnet(con,'gethost');
        disp(sprintf('Connection from host:%d.%d.%d.%d port:%d\n',ip,port));
        pnet(con,'setreadtimeout', 4);  % Evite de bloquer le serveur si pas de requête du 4S
        pnet(con,'setwritetimeout',1);
        disp('En attente de requête');
        attente = 0;
        while (pnet(con,'status')>0)            % Boucle de lecture des requêtes du 4S
            data=pnet(con,'readline',4000000);  % Lecture du socket
%             while (isempty(data))
%                 data=pnet(con,'readline',4000000);
%             end
%             % Recherche d'une requete POST ou GET
%             while (~strcmp(data(1:4),'POST')&&~strcmp(data(1:3),'GET'))
%                 data=pnet(con,'readline',4000000);
%             end
            if (length(data)>4)           % Si le socket n'est pas vide on cherche une requête POST ou GET
                if (strcmp(data(1:4),'POST')) % Traitement d'une requete POST
                    disp(sprintf('REQUETE POST : %s\n', data));
                    % Lecture de la requete
                    posslash=findstr(data, '/');
                    posxml=findstr(data,'.xml');
                    if(~isempty(posslash))
                        sizepos=size(posslash);
                        if(sizepos(1,2)<3) % requete de controle de connection
                            if (~isempty(posxml))
                                typerequete=data(posslash(1,1)+1:posxml(1,1)+4);
                                disp(sprintf('nom fenetre RAYSON en cours : Sans objet\n'));
                                disp(sprintf('Requete : %s\n', typerequete));
                                while (~strcmp(data,'</inversion>'))
                                    data=pnet(con,'readline',4000000);
                                end
                                pnet(con,'printf','<?xml version="1.0" encoding="UTF-8" ?><inversion><info><action>Serveur Inversion OK</action></info></inversion>\n');
                            else
                                disp(sprintf('Pas une requete 4S\n'));
                            end
                        else              % requete de commande de démarrage de l'inversion
                            if (~isempty(posxml))
                                nomfenetre=data(posslash(1,1)+1:posslash(1,2)-1);
                                disp(sprintf('nom fenetre RAYSON en cours : %s', nomfenetre));
                                typerequete=data(posslash(1,2)+1:posxml(1,1)+4);
                                disp(sprintf('Requete : %s\n', typerequete));
                                data=pnet(con,'readline',4000000);
                                while (~strcmp(data,'<inversion>'))
                                    data=pnet(con,'readline',4000000);
                                end
                                xmlstr=strcat(data);
                                data=pnet(con,'readline',4000000);
                                while (~strcmp(data,'</inversion>'))
                                    xmlstr=strcat(xmlstr,data);
                                    data=pnet(con,'readline',4000000);
                                end
                                xmlstr=strcat(xmlstr,data);
                                % pour verification par le 4S, dump de xmlstr...
                                %%fid = fopen('teststr.xml','w');
                                %%fprintf(fid,xmlstr);
                                %%fclose(fid);
                                % conversion de string xml en objet xml 
                                obj=xml(xmlstr);
                                % inspect(obj); % verification
                                pnet(con,'printf','<?xml version="1.0" encoding="UTF-8" ?><inversion><info><action>Calcul en cours</action></info></inversion>\n');
                                %-------------------------------------------------%
                                % ici on commence le traitement de la requete
                                % d'inversion...
                                %-------------------------------------------------%
                                % inv_flag = menu('Choisir type d''inversion','Directe', 'Indirecte');
                                run_calcul(con,obj,test_4S,handles,hObject);                                
                                disp(sprintf('*** Sortie du calcul\n'));
                                % sortie finale... si necessaire ? sera dans le GUI
                                outputs = [];
                                % sortie graphique - sera dans le GUI
                                pproc = 1;
%                                 if pproc && inv_flag==2
%                                   load -mat test.out
%                                   postproc(simplex_saved,E_saved) % a placer dans le GUI
%                                end
                            else
                                disp(sprintf('run_inv 1 : Pas une requete 4S'));
                            end
                        end
                    else
                        disp(sprintf('run_inv 2 : Pas une requete 4S'));
                    end
                elseif (strcmp(data(1:3),'GET'))    % Traitement d'une requete GET
                    disp(sprintf('REQUETE GET'));
                    disp(sprintf('entete : %s', data));
                    % Lecture de la requete
                    posslash=findstr(data, '/');
                    if(~isempty(posslash))
                        sizepos=size(posslash);
                        if(sizepos(1,2)<3)
                            disp('run_inv : Pas une requete 4S');
                        else
                            posxml=findstr(data,'.xml');
                            if (~isempty(posxml))
                                nomfenetre=data(posslash(1,1)+1:posslash(1,2)-1);
                                disp(sprintf('nom fenetre RAYSON en cours : %s', nomfenetre));
                                typerequete=data(posslash(1,2)+1:posxml(1,1)+4);
                                disp(sprintf('Requete : %s\n', typerequete));
                                % sortie :
                                s1 = '<?xml version="1.0" encoding="UTF-8" ?><inversion><info><action>';
                                s2 = 'Serveur INVERSION OK - calcul en cours...';
                                s3 = '</action></info></inversion>\n';
                                pnet(con,'printf',strcat(s1,s2,s3));
                                data = pnet(con,'readline',4000000);
                            else
                                disp('run_inv : Pas une requete 4S');
                            end
                        end
                    else
                        disp('run_inv : Pas une requete 4S');
                    end
                else
                    disp('run_inv 3 : Pas une requete 4S');
                end % Fin traitement requête
            else
                disp(sprintf('En attente de requête : %d',attente));
                if mod(attente,5) == 0
                    myhelpdlg('En attente de nouveau Ping','Ping');
                end
                attente = attente + 1;
            end % Fin recherche de requête
        end  
    end % Fin boucle serveur HTTP 
    pnet(sock,'close');
end