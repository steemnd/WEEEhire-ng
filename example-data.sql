-- This data is just an example to showcase the software, with some jokes sprinkled in just for fun.
-- Any Resemblance to real persons, living or dead, is purely coincidental.

INSERT INTO users (id, name, surname, degreecourse, year, matricola, area, letter, published, status, recruiter, submitted, token, recruitertg, invitelink, emailed, interview, interviewer, interviewertg, interviewstatus, answers, hold, visiblenotes) VALUES (1, 'Mario', 'Rossi', 'Ingegneria Informatica', '2º Triennale', 's123456', 'Sviluppo software Python', 'Ciao carissimi, sono un esperto di Python che programma con esso linguaggio da almeno 1000 anni, ma fa solo quello, negli ultimi 1000 anni non ho fatto nient''altro e non ho visto la luce del sole, potrei essere un vampiro o potrei non esserlo.', 0, null, null, 1633463371, '$2y$10$zy8K0uVxNEliVILfnWR25.XxJKHFoksjvjeOM5ni3GEYPoWFo6Gw6', null, null, 0, null, null, null, null, null, 0, null);
INSERT INTO users (id, name, surname, degreecourse, year, matricola, area, letter, published, status, recruiter, submitted, token, recruitertg, invitelink, emailed, interview, interviewer, interviewertg, interviewstatus, answers, hold, visiblenotes) VALUES (2, 'Omero', 'Simpsoni', 'Ingegneria Energetica E Nucleare', '3º Triennale', 's5425', 'Riparazione hardware', 'Mi piace riparare le cose, lo faccio da molti anni ma ogni tanto mi pianto un martello in fronte tra gli occhi e mi resta incastrato, ma non credo che questo sia un gran problema per la vita.', 1, 0, 'Test Administrator', 1633463508, '$2y$10$MwUSBFNYwD/qXDuc9IfiquRvjPiCXYrM0UKXxdB0KEB4DxLfSjyku', null, null, 0, null, null, null, null, null, 0, null);
INSERT INTO users (id, name, surname, degreecourse, year, matricola, area, letter, published, status, recruiter, submitted, token, recruitertg, invitelink, emailed, interview, interviewer, interviewertg, interviewstatus, answers, hold, visiblenotes) VALUES (3, 'Andrea', 'Andrea', 'Mechanical Engineering', '3º Triennale', 's9999', 'Riparazione hardware', 'Le mie conoscenze in merito di riparazione sono vastissime, realizzate principalmente con una chiave inglese. So anche CADdare il CAD, con cui ho progettato un numero enorme di cabinati che ho fieramente esposto a varie fiere ed eventi.', 0, null, null, 1633463607, '$2y$10$1otG0QF0aA.TUOi3PPBeie4/0Fsl5JzszJW/48Wsq2rX0jO98fThO',  null, null, 0, null, null, null, null, null, 0, null);
INSERT INTO users (id, name, surname, degreecourse, year, matricola, area, letter, published, status, recruiter, submitted, token, recruitertg, invitelink, emailed, interview, interviewer, interviewertg, interviewstatus, answers, hold, visiblenotes) VALUES (4, 'Paola Noemi', 'Junctions', 'Ingegneria Elettronica', '1º Magistrale', 's77777', 'Elettronica', 'Ciao persone, ho un''esperienza immensa nella progettazione di sistemi integrati, di sistemi disintegrati, di PCB, di IC, so il Verilog, so il VHDL, il silicio è la mia seconda casa, so usare Virtuoso con grande virtù, l''ADE M, L, XL, GXL, anche lo STIGE se necessario. Spero di trovare nel vostro team dei folli che vogliano progettare circuiti integrati e stamparseli in casa, c''è qualcuno che lo fa, anche se con un livello tecnologico degli anni ''50.

Cordialmente vostra,
P. N. Junctions', 0, 1, 'Alice', 1633464267, '$2y$10$zqLa3.I7H.CAYAdnyoJHNu38iN3SsTEt/mD1cIMKXtT9CNdbdi0qW',  null, null, 0, null, null, null, null, null, 0, null);
INSERT INTO users (id, name, surname, degreecourse, year, matricola, area, letter, published, status, recruiter, submitted, token, recruitertg, invitelink, emailed, interview, interviewer, interviewertg, interviewstatus, answers, hold, visiblenotes) VALUES (5, 'Dotto', 'Random', 'Dottorato in Fisica', 'Dottorato', 'd4444', 'Machine Learning Engineer', 'Sono un fisico, con un fisico incredibile. Sono anche un dottore quasi dottrato, ma anche random alle volte. Ho un''esperienza immensa nell''insegnare cose alle macchine. Appena passo davanti a una macchina, quella impara e le aumenta il QI.', 0, null, null, 1633464531, '$2y$10$GnVrVFSGAhkiuOzvOmuYtOqRd63qjcMlO.MqcsYNlCUYU4EgyqO3S', null, null, 0, null, null, null, null, null, 0, null);

INSERT INTO evaluation (id_evaluation, ref_user_id, id_evaluator, desc_evaluator, date, vote) VALUES (24, 5, 'alice', 'Alice', 1633464552, 3);
INSERT INTO evaluation (id_evaluation, ref_user_id, id_evaluator, desc_evaluator, date, vote) VALUES (25, 3, 'alice', 'Alice', 1633464560, 4);
INSERT INTO evaluation (id_evaluation, ref_user_id, id_evaluator, desc_evaluator, date, vote) VALUES (26, 4, 'alice', 'Alice', 1633464567, 5);
INSERT INTO evaluation (id_evaluation, ref_user_id, id_evaluator, desc_evaluator, date, vote) VALUES (27, 2, 'bob', 'Bob', 1633464599, 1);
INSERT INTO evaluation (id_evaluation, ref_user_id, id_evaluator, desc_evaluator, date, vote) VALUES (28, 2, 'test.test', 'Test Administrator', 1633464666, 2);
INSERT INTO evaluation (id_evaluation, ref_user_id, id_evaluator, desc_evaluator, date, vote) VALUES (29, 4, 'bob', 'Bob', 1633464694, 5);
INSERT INTO evaluation (id_evaluation, ref_user_id, id_evaluator, desc_evaluator, date, vote) VALUES (30, 4, 'test.test', 'Test Administrator', 1633464731, 5);
INSERT INTO evaluation (id_evaluation, ref_user_id, id_evaluator, desc_evaluator, date, vote) VALUES (31, 1, 'test.test', 'Test Administrator', 1633464990, 3);
