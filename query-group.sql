-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS 'Num Studenti',YEAR(`enrolment_date`) AS 'anno iscrizione'
FROM `students`
GROUP BY YEAR(`enrolment_date`);
-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS'Numero insegnanti' ,`office_address` AS'Indirizzo'
FROM `teachers`
GROUP BY `office_address`;
-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`,ROUND(AVG(`vote`)) AS 'Media Voti'
FROM `exam_student`
GROUP BY `exam_id`;
-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT  COUNT(*) AS 'Num Corsi di Laurea',`department_id`
FROM `degrees`
GROUP BY `department_id`;