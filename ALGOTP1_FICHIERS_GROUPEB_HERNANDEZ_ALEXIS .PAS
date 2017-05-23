program fichier_conjugue;

uses crt;

var
rep:string;
fichier:text;
nbverbe:integer;

procedure CreaFichier(var fichier:text;var nbverbe:integer);
var
i:integer;
verbes,verbeSeul:string;

BEGIN
	nbverbe:=0;
	verbes:= 'RIRE/RECEVOIR/ALLER/BOUILLIR/ENVOYER/PEINDRE/HABITER/PAYER/MOURIR/HAIR/VOULOIR/FINIR/S''AMUSER/';
	verbeSeul:='';
	assign(fichier,'liste_verbes.txt');
	rewrite(fichier);

	for i:=1 to length(verbes) do
	BEGIN
		if verbes[i]<>'/' then
		begin
			verbeSeul:=verbeSeul + verbes[i];
			end
		ELSE
		begin
			writeln(fichier,verbeSeul);
			verbeseul:='';
			nbverbe:=nbverbe+1;
		end;
		
	END;
	close(fichier);

END;



procedure AfficheVerbe(var fichier:text);
var
mot:string;
BEGIN
	assign(fichier,'liste_verbes.txt');
	reset(fichier);
	mot:='';
	while not eof(fichier) do
	BEGIN
		read(fichier,mot);//on lit dans fichier les ligne de 1 jusqu'a la fin du fichier (il s'acrémente tout seul)
		write(mot);//on affiche le contenue de la ligne lue
		mot:='';
	END;
	close(fichier);
END;

{function TestVerbe1

function TestVerbe2

function TestVerbe3}


BEGIN

clrscr;


CreaFichier(fichier,nbverbe);


writeln('pour lire la liste des verbes appuyez sur 1');

repeat
	read(rep);
until rep='1';


AfficheVerbe(fichier);




readln();
END.
