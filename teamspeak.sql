-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 19 2017 г., 14:52
-- Версия сервера: 5.5.43-0+deb8u1
-- Версия PHP: 5.6.7-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `teamspeak`
--

-- --------------------------------------------------------

--
-- Структура таблицы `main_clients`
--

CREATE TABLE IF NOT EXISTS `main_clients` (
  `pk_client` varchar(255) NOT NULL DEFAULT '',
  `benutzer` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `last_login` varchar(255) NOT NULL DEFAULT '',
  `benutzer_blocked` varchar(255) NOT NULL DEFAULT '',
  `blocked_until` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `main_clients`
--

INSERT INTO `main_clients` (`pk_client`, `benutzer`, `password`, `last_login`, `benutzer_blocked`, `blocked_until`) VALUES
('9C619E19078A1611F0C0FDF387B2D70D', 'test@gmail.com', 'R8yoHG82g5g2o', '16.02.2017 - 12:33', 'false', '0'),
('D6CBE2A4FBF6FCDFB984A042295EA000', 'tlenmager@gmail.com', 'OlSgO0GE4Vih.', '19.02.2017 - 14:06', 'false', '0'),
('FA4224135ECF41E0C58F3F79C0DC4061', 'admin@redoss.ru', 'EXDlyWckkN962', '19.02.2017 - 12:47', 'false', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `main_clients_infos`
--

CREATE TABLE IF NOT EXISTS `main_clients_infos` (
  `fk_clients` varchar(255) NOT NULL DEFAULT '',
  `vorname` varchar(255) NOT NULL DEFAULT '',
  `nachname` varchar(255) NOT NULL DEFAULT '',
  `telefon` varchar(255) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `skype` varchar(255) NOT NULL DEFAULT '',
  `steam` varchar(255) NOT NULL DEFAULT '',
  `twitter` varchar(255) NOT NULL DEFAULT '',
  `facebook` varchar(255) NOT NULL DEFAULT '',
  `google` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `main_clients_infos`
--

INSERT INTO `main_clients_infos` (`fk_clients`, `vorname`, `nachname`, `telefon`, `homepage`, `skype`, `steam`, `twitter`, `facebook`, `google`) VALUES
('9C619E19078A1611F0C0FDF387B2D70D', '', '', '', '', '', '', '', '', ''),
('D6CBE2A4FBF6FCDFB984A042295EA000', '', '', '', '', '', '', '', '', ''),
('FA4224135ECF41E0C58F3F79C0DC4061', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `main_clients_rights`
--

CREATE TABLE IF NOT EXISTS `main_clients_rights` (
`id` int(255) NOT NULL,
  `fk_clients` varchar(255) NOT NULL DEFAULT '',
  `fk_rights` varchar(255) NOT NULL DEFAULT '',
  `access_instanz` varchar(255) NOT NULL DEFAULT 'not_needed',
  `access_ports` varchar(255) NOT NULL DEFAULT 'not_needed',
  `timestamp` varchar(255) NOT NULL DEFAULT 'not_needed'
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `main_clients_rights`
--

INSERT INTO `main_clients_rights` (`id`, `fk_clients`, `fk_rights`, `access_instanz`, `access_ports`, `timestamp`) VALUES
(1, 'D6CBE2A4FBF6FCDFB984A042295EA000', '16AF116798FF36E047C688C60DBE2E06', 'not_needed', 'not_needed', '0'),
(2, 'D6CBE2A4FBF6FCDFB984A042295EA000', '236114B94B2A93918E9BF63A84645558', 'not_needed', 'not_needed', '0'),
(3, 'D6CBE2A4FBF6FCDFB984A042295EA000', '35D6667DFFC60DB20A76343EA647E490', 'not_needed', 'not_needed', '0'),
(4, 'D6CBE2A4FBF6FCDFB984A042295EA000', '477617BC0FEDB162C76CFF82090A6714', 'not_needed', 'not_needed', '0'),
(5, 'D6CBE2A4FBF6FCDFB984A042295EA000', '4CCB475C8052747CFA5DA0A381AC8E06', 'not_needed', 'not_needed', '0'),
(6, 'D6CBE2A4FBF6FCDFB984A042295EA000', '78F3C5B95C4FBFABC1FB32DE7FB565B7', 'not_needed', 'not_needed', '0'),
(7, 'D6CBE2A4FBF6FCDFB984A042295EA000', '7B217153263A56E294BFDF9126D05F61', 'not_needed', 'not_needed', '0'),
(8, 'D6CBE2A4FBF6FCDFB984A042295EA000', '9A3C7A305E391A7E7CFE32239852A884', 'not_needed', 'not_needed', '0'),
(9, 'D6CBE2A4FBF6FCDFB984A042295EA000', 'AEEDBC922551E94BB3747C586CD63CC2', 'not_needed', 'not_needed', '0'),
(10, 'D6CBE2A4FBF6FCDFB984A042295EA000', 'BF5D9619750B5D4F7A360D764DCC918D', 'not_needed', 'not_needed', '0'),
(11, 'D6CBE2A4FBF6FCDFB984A042295EA000', 'E2A39A9557C43C80D68F6256EF2B8D49', 'not_needed', 'not_needed', '0'),
(12, 'D6CBE2A4FBF6FCDFB984A042295EA000', 'E983FCEFFA2D893AB40B734DEA321C7D', 'not_needed', 'not_needed', '0'),
(13, 'D6CBE2A4FBF6FCDFB984A042295EA000', 'E9A5595328C9708F8AF713326E1911BA', 'not_needed', 'not_needed', '0'),
(14, 'D6CBE2A4FBF6FCDFB984A042295EA000', 'F312FC98EE732AE51F510189FFE67B18', 'not_needed', 'not_needed', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `main_clients_rights_server_edit`
--

CREATE TABLE IF NOT EXISTS `main_clients_rights_server_edit` (
  `fk_clients` varchar(255) NOT NULL DEFAULT '',
  `fk_rights` varchar(255) NOT NULL DEFAULT '',
  `access_instanz` varchar(255) NOT NULL DEFAULT '',
  `access_ports` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `main_clients_rights_server_edit`
--

INSERT INTO `main_clients_rights_server_edit` (`fk_clients`, `fk_rights`, `access_instanz`, `access_ports`) VALUES
('FA4224135ECF41E0C58F3F79C0DC4061', '5170EEBC9300AB99A7F0C6D1F3C7BC2B', '0', '9988,'),
('FA4224135ECF41E0C58F3F79C0DC4061', '23C41C6083DBFB3950234FDC25596CE0', '0', '9988,'),
('FA4224135ECF41E0C58F3F79C0DC4061', '28D065A825F404C137D502F1F0F116F8', '0', '9988,'),
('FA4224135ECF41E0C58F3F79C0DC4061', '5F83D618DCA1C38A03DE0B84671ED298', '0', '9988,'),
('FA4224135ECF41E0C58F3F79C0DC4061', 'AB6311BFAA87F17C446634E8A20A09E2', '0', '9988,'),
('FA4224135ECF41E0C58F3F79C0DC4061', '19C3A3E2F44772DA77490BF61548265C', '0', '9988,');

-- --------------------------------------------------------

--
-- Структура таблицы `main_mails`
--

CREATE TABLE IF NOT EXISTS `main_mails` (
  `id` varchar(255) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `main_mails`
--

INSERT INTO `main_mails` (`id`, `headline`, `mail_subject`, `mail_body`) VALUES
('answer_ticket', ': Ticket answered', 'Ticket answered', '<html>\r\n	<body>\r\n		<table width="100%" bgcolor="#e0e0e0" cellpadding="0" cellspacing="0" border="0">\r\n			<tr>\r\n				<td>\r\n					<table align="center" width="100%" border="0" cellpadding="0" cellspacing="0" style="max-width:650px; background-color:#fff; font-family:Verdana, Geneva, sans-serif;">\r\n						<thead>\r\n							<tr height="80">\r\n								<th colspan="4" style="background-color:#ccc; border-bottom:solid 1px #aaa; font-family:Verdana, Geneva, sans-serif; color:#333; font-size:34px;" >\r\n									%heading%: Ticket Answered\r\n								</th>\r\n							</tr>\r\n						</thead>\r\n						<tbody>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:20px;">Hello %client%,</p>\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">%admin% has responded to your ticket.  You can check the response in the web interface under Tickets and if necessary reply.</p>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">Sincerely,<br/>%heading%</p>\r\n								</td>\r\n							</tr>\r\n							<tr height="40">\r\n								<td colspan="4" align="center" style="background-color:#ccc; border-top:solid 1px #aaa; font-size:12px; ">\r\n									(c) by L.Gmann\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table>\r\n	</body>\r\n</html>'),
('closed_ticket', ': Ticket closed', 'Ticket closed', '<html>\r\n	<body>\r\n		<table width="100%" bgcolor="#e0e0e0" cellpadding="0" cellspacing="0" border="0">\r\n			<tr>\r\n				<td>\r\n					<table align="center" width="100%" border="0" cellpadding="0" cellspacing="0" style="max-width:650px; background-color:#fff; font-family:Verdana, Geneva, sans-serif;">\r\n						<thead>\r\n							<tr height="80">\r\n								<th colspan="4" style="background-color:#80FF80; border-bottom:solid 1px #aaa; font-family:Verdana, Geneva, sans-serif; color:#090; font-size:34px;" >\r\n									%heading%: Ticket Closed\r\n								</th>\r\n							</tr>\r\n						</thead>\r\n						<tbody>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:20px;">Hello %client%,</p>\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">%admin% has closed your ticket. We hope we could answer all of your questions.<br /><br />We wish you a good day.</p>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">Sincerely,<br/>%heading%</p>\r\n								</td>\r\n							</tr>\r\n							<tr height="40">\r\n								<td colspan="4" align="center" style="background-color:#80FF80; border-top:solid 1px #aaa; font-size:12px; ">\r\n									(c) by L.Gmann\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table>\r\n	</body>\r\n</html>'),
('create_request', ': Server Request', 'Server Request', '<html>\r\n	<body>\r\n		<table width="100%" bgcolor="#e0e0e0" cellpadding="0" cellspacing="0" border="0">\r\n			<tr>\r\n				<td>\r\n					<table align="center" width="100%" border="0" cellpadding="0" cellspacing="0" style="max-width:650px; background-color:#fff; font-family:Verdana, Geneva, sans-serif;">\r\n						<thead>\r\n							<tr height="80">\r\n								<th colspan="4" style="background-color:#ccc; border-bottom:solid 1px #aaa; font-family:Verdana, Geneva, sans-serif; color:#333; font-size:34px;" >\r\n									%heading%: Server Request\r\n								</th>\r\n							</tr>\r\n						</thead>\r\n						<tbody>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:20px;">Hello %client%,</p>\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">You will receive an answer from us soon.</p>\r\n								</td>\r\n							</tr>\r\n							<tr align="center" height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#ddd;">\r\n								<td colspan="4" style="text-align:center;border-bottom:solid 1px #aaa;">\r\n									Details\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									E-Mail\r\n								</td>\r\n								<td>\r\n									%client%\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Password\r\n								</td>\r\n								<td>\r\n									%password%\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Server Name\r\n								</td>\r\n								<td>\r\n									%serverCreateServername%\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Server IP\r\n								</td>\r\n								<td>\r\n									%ip%\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Server Port\r\n								</td>\r\n								<td>\r\n									%serverCreatePort%\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Server Slots\r\n								</td>\r\n								<td>\r\n									%serverCreateSlots%\r\n								</td>\r\n							</tr>\r\n                            <tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Reserved Slots\r\n								</td>\r\n								<td>\r\n									%serverCreateReservedSlots%\r\n								</td>\r\n							</tr> \r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Server Password\r\n								</td>\r\n								<td>\r\n									%serverCreatePassword%\r\n								</td>\r\n							</tr>\r\n                            <tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Welcome Message\r\n								</td>\r\n								<td>\r\n									%serverCreateWelcomeMessage%\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">Sincerely,<br/>%heading%</p>\r\n								</td>\r\n							</tr>\r\n							<tr height="40">\r\n								<td colspan="4" align="center" style="background-color:#ccc; border-top:solid 1px #aaa; font-size:12px; ">\r\n									(c) by L.Gmann\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table>\r\n	</body>\r\n</html>'),
('create_ticket', ': Ticket created', 'Ticket created', '<html>\r\n	<body>\r\n		<table width="100%" bgcolor="#e0e0e0" cellpadding="0" cellspacing="0" border="0">\r\n			<tr>\r\n				<td>\r\n					<table align="center" width="100%" border="0" cellpadding="0" cellspacing="0" style="max-width:650px; background-color:#fff; font-family:Verdana, Geneva, sans-serif;">\r\n						<thead>\r\n							<tr height="80">\r\n								<th colspan="4" style="background-color:#ccc; border-bottom:solid 1px #aaa; font-family:Verdana, Geneva, sans-serif; color:#333; font-size:34px;" >\r\n									%heading%: Ticket Created\r\n								</th>\r\n							</tr>\r\n						</thead>\r\n						<tbody>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:20px;">Hello %client%,</p>\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">Ticket has been opened, We&apos;ll get to you as soon as possible.</p>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">Sincerely,<br/>%heading%</p>\r\n								</td>\r\n							</tr>\r\n							<tr height="40">\r\n								<td colspan="4" align="center" style="background-color:#ccc; border-top:solid 1px #aaa; font-size:12px; ">\r\n									(c) by L.Gmann\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table>\r\n	</body>\r\n</html>'),
('request_failed', ': Server Request rejected', 'Server Request rejected', '<html>\r\n	<body>\r\n		<table width="100%" bgcolor="#e0e0e0" cellpadding="0" cellspacing="0" border="0">\r\n			<tr>\r\n				<td>\r\n					<table align="center" width="100%" border="0" cellpadding="0" cellspacing="0" style="max-width:650px; background-color:#fff; font-family:Verdana, Geneva, sans-serif;">\r\n						<thead>\r\n							<tr height="80">\r\n								<th colspan="4" style="background-color:#FF8080; border-bottom:solid 1px #aaa; font-family:Verdana, Geneva, sans-serif; color:#900; font-size:34px;" >\r\n									%heading%: Server Request\r\n								</th>\r\n							</tr>\r\n						</thead>\r\n						<tbody>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:20px;">Hello %client%,</p>\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;"> We&apos;re Sorry, <br /> But we have rejected your server request.<br /><br />Have a great day.</p>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">Sincerely,<br/>%heading%</p>\r\n								</td>\r\n							</tr>\r\n							<tr height="40">\r\n								<td colspan="4" align="center" style="background-color:#FF8080; border-top:solid 1px #aaa; font-size:12px; ">\r\n									(c) by L.Gmann\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table>\r\n	</body>\r\n</html>'),
('request_success', ': Server Request accepted', 'Server Request accepted', '<html>\r\n	<body>\r\n		<table width="100%" bgcolor="#e0e0e0" cellpadding="0" cellspacing="0" border="0">\r\n			<tr>\r\n				<td>\r\n					<table align="center" width="100%" border="0" cellpadding="0" cellspacing="0" style="max-width:650px; background-color:#fff; font-family:Verdana, Geneva, sans-serif;">\r\n						<thead>\r\n							<tr height="80">\r\n								<th colspan="4" style="background-color:#80FF80; border-bottom:solid 1px #aaa; font-family:Verdana, Geneva, sans-serif; color:#090; font-size:34px;" >\r\n									%heading%: Server Request\r\n								</th>\r\n							</tr>\r\n						</thead>\r\n						<tbody>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:20px;">Hello %client%,</p>\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">Good News!!<br /> Your server request was accepted!</p>\r\n								</td>\r\n							</tr>\r\n							<tr align="center" height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#ddd;">\r\n								<td colspan="4" style="text-align:center;border-bottom:solid 1px #aaa;">\r\n									Details\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									E-Mail\r\n								</td>\r\n								<td>\r\n									%client%\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Server Name\r\n								</td>\r\n								<td>\r\n									%serverCreateServername%\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Server Port\r\n								</td>\r\n								<td>\r\n									%serverCreatePort%\r\n								</td>\r\n							</tr>\r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Server Slots\r\n								</td>\r\n								<td>\r\n									%serverCreateSlots%\r\n								</td>\r\n							</tr>\r\n                            <tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Reserved Slots\r\n								</td>\r\n								<td>\r\n									%serverCreateReservedSlots%\r\n								</td>\r\n							</tr> \r\n							<tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Server Password\r\n								</td>\r\n								<td>\r\n									%serverCreatePassword%\r\n								</td>\r\n							</tr>\r\n                            <tr height="20" style="font-family:Verdana, Geneva, sans-serif;background-color:#eee;">\r\n								<td>\r\n									Welcome Message\r\n								</td>\r\n								<td>\r\n									%serverCreateWelcomeMessage%\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">When connecting, Please use this token: <b>%token%</b></p>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td colspan="4" style="padding:15px;">\r\n									<p style="font-size:15px; font-family:Verdana, Geneva, sans-serif;">Sincerely,<br/>%heading%</p>\r\n								</td>\r\n							</tr>\r\n							<tr height="40">\r\n								<td colspan="4" align="center" style="background-color:#80FF80; border-top:solid 1px #aaa; font-size:12px; ">\r\n									(c) by L.Gmann\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table>\r\n	</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Структура таблицы `main_modul`
--

CREATE TABLE IF NOT EXISTS `main_modul` (
  `modul` varchar(255) NOT NULL DEFAULT '',
  `active` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `main_modul`
--

INSERT INTO `main_modul` (`modul`, `active`) VALUES
('webinterface', 'true'),
('free_register', 'false'),
('free_ts3_server_application', 'false'),
('write_news', 'false'),
('masterserver', 'false');

-- --------------------------------------------------------

--
-- Структура таблицы `main_rights`
--

CREATE TABLE IF NOT EXISTS `main_rights` (
  `pk_rights` varchar(255) NOT NULL DEFAULT '',
  `rights_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `main_rights`
--

INSERT INTO `main_rights` (`pk_rights`, `rights_name`) VALUES
('16AF116798FF36E047C688C60DBE2E06', 'right_hp_ts3'),
('1D5294EAE3E7D045D506213F807E6897', 'right_web_server_token'),
('1F60E3C8E8EA3A90652EEF2AD53FD3F9', 'right_web_server_start_stop'),
('236114B94B2A93918E9BF63A84645558', 'right_hp_user_create'),
('258ED6774278EBBB04A9B62B916C152F', 'right_web_client_rights'),
('35D6667DFFC60DB20A76343EA647E490', 'right_bot'),
('3BA68A15230CF6224BA24470311FF590', 'right_web_server_edit'),
('41553A31D0B5CF002773CFB9B1AF4FBB', 'right_web_client_actions'),
('477617BC0FEDB162C76CFF82090A6714', 'right_hp_user_edit'),
('4CCB475C8052747CFA5DA0A381AC8E06', 'right_hp_mails'),
('5DD978FE4A5A658403746C08642D60BF', 'right_web_channel_actions'),
('6508D4878DF4FFB0182BBA5952DF5815', 'right_web_file_transfer'),
('65EC210D5A41AC466CFE9F83831D48E2', 'right_web_server_icons'),
('7861F6AC150064D04A4BBEDD40D70359', 'right_web_server_bans'),
('78F3C5B95C4FBFABC1FB32DE7FB565B7', 'right_web_server_create'),
('7B217153263A56E294BFDF9126D05F61', 'right_web_server_delete'),
('80EBDF81FC2E51EE93D617DF6F9F33EF', 'right_web_server_mass_actions'),
('81BEF4DC1C0EE74A57D5BB873DBF4E19', 'right_web_server_clients'),
('8AF712A6AD6BAE7C9C39B7A765474255', 'right_web_server_view'),
('9A3C7A305E391A7E7CFE32239852A884', 'right_web_global_message_poke'),
('A61F8319DC8E2E23D6A736D9BCC75353', 'right_web_server_backups'),
('ACF5FB780BE85739F6A7DE8339B0BDC1', 'right_web_server_protokoll'),
('AEEDBC922551E94BB3747C586CD63CC2', 'right_hp_main'),
('BF5D9619750B5D4F7A360D764DCC918D', 'right_hp_user_delete'),
('E2A39A9557C43C80D68F6256EF2B8D49', 'right_web'),
('E983FCEFFA2D893AB40B734DEA321C7D', 'right_web_global_server'),
('E9A5595328C9708F8AF713326E1911BA', 'right_hp_ticket_system'),
('F312FC98EE732AE51F510189FFE67B18', 'login_key'),
('FDDFAF0D32F7EE94C2A1AEBAEA615300', 'right_web_server_message_poke');

-- --------------------------------------------------------

--
-- Структура таблицы `main_rights_server_edit`
--

CREATE TABLE IF NOT EXISTS `main_rights_server_edit` (
  `rights_name` varchar(255) NOT NULL DEFAULT '',
  `pk_rights` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `main_rights_server_edit`
--

INSERT INTO `main_rights_server_edit` (`rights_name`, `pk_rights`) VALUES
('right_server_edit_port', '5170EEBC9300AB99A7F0C6D1F3C7BC2B'),
('right_server_edit_slots', '23C41C6083DBFB3950234FDC25596CE0'),
('right_server_edit_autostart', '28D065A825F404C137D502F1F0F116F8'),
('right_server_edit_min_client_version', '5F83D618DCA1C38A03DE0B84671ED298'),
('right_server_edit_main_settings', 'DC17CAB78A14A4B5D29086FCEC0797C2'),
('right_server_edit_default_servergroups', 'EFF8A39BA3AFF0A8995EB090A363704C'),
('right_server_edit_host_settings', '4FCCD32AD9D340B1EFEF43A2BE5E1010'),
('right_server_edit_complain_settings', 'FB41AD52CB71FCF07249E1DE8A49A14F'),
('right_server_edit_antiflood_settings', '6471B972F2D739F5585F3BF3E9F87902'),
('right_server_edit_transfer_settings', 'AB6311BFAA87F17C446634E8A20A09E2'),
('right_server_edit_protokoll_settings', '19C3A3E2F44772DA77490BF61548265C');

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_answer`
--

CREATE TABLE IF NOT EXISTS `ticket_answer` (
  `id` int(11) NOT NULL,
  `ticketId` smallint(6) NOT NULL,
  `pk` varchar(255) NOT NULL,
  `msg` longtext NOT NULL,
  `moderator` text NOT NULL,
  `dateAded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_tickets`
--

CREATE TABLE IF NOT EXISTS `ticket_tickets` (
`id` int(11) NOT NULL,
  `pk` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `msg` longtext NOT NULL,
  `department` text NOT NULL,
  `status` text NOT NULL,
  `dateAded` datetime NOT NULL,
  `dateClosed` datetime NOT NULL,
  `dateActivity` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `main_clients`
--
ALTER TABLE `main_clients`
 ADD PRIMARY KEY (`pk_client`);

--
-- Индексы таблицы `main_clients_infos`
--
ALTER TABLE `main_clients_infos`
 ADD PRIMARY KEY (`fk_clients`);

--
-- Индексы таблицы `main_clients_rights`
--
ALTER TABLE `main_clients_rights`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_mails`
--
ALTER TABLE `main_mails`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_rights`
--
ALTER TABLE `main_rights`
 ADD PRIMARY KEY (`pk_rights`);

--
-- Индексы таблицы `ticket_tickets`
--
ALTER TABLE `ticket_tickets`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `main_clients_rights`
--
ALTER TABLE `main_clients_rights`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT для таблицы `ticket_tickets`
--
ALTER TABLE `ticket_tickets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
