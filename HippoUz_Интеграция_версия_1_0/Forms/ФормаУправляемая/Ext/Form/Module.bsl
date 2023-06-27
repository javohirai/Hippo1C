﻿
&НаСервере
Процедура ПроверитьНаСервере()
	
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект");
	ОбработкаОбъект.СохранитьВнешнуюКомпонентуВКаталог();
	ОбработкаОбъект.ПервоначальныйЗапусПрограммы();
		
	
КонецПроцедуры

&НаКлиенте
Процедура Проверить(Команда)
	
	ПроверитьНаСервере();
	
КонецПроцедуры

&НаКлиенте
Процедура ПутьКФайлуКриптографииНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	Режим = РежимДиалогаВыбораФайла.ВыборКаталога;
	ДиалогВыбораКаталога = Новый ДиалогВыбораФайла(Режим);
	ДиалогВыбораКаталога.Заголовок = "Выберите путь для сохранения компоненты криптографии";
	
	ОбработкаОповощения = Новый ОписаниеОповещения("ПутьКФайлуКриптографииНачалоВыбораЗавершение",ЭтотОбъект);
	ДиалогВыбораКаталога.Показать(ОбработкаОповощения);
	
КонецПроцедуры

&НаКлиенте
Процедура ПутьКФайлуКриптографииНачалоВыбораЗавершение(Результат,ДополнительныеПараметры) Экспорт
	
	Если Результат = Неопределено Тогда
		Возврат;
	КонецЕсли; 
	
	Объект.ПутьКФайлуКриптографии = Результат[0];
	
КонецПроцедуры

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект");
	ОбработкаОбъект.ИнициализироватьНастройкиПользователья();
	ЗначениеВРеквизитФормы(ОбработкаОбъект,"Объект");
	
КонецПроцедуры

