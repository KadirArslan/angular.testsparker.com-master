-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 03:52 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spa_angular`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `title`, `detail`) VALUES
(1, 1, 'Web Browser Address Bar Spoofing', 'This blog post looks at two address bar spoofing incidents. The first involved the Homograph vulnerability, where attackers used the IDN feature to trick users by imitating legitimate characters. The second involved Edge and Safari, in which visitors redirected to another website were intercepted by attackers. Code samples are included.'),
(2, 2, 'The Powerful Resource of PHP Stream Wrappers', 'This blog post examines how PHP stream wrappers can be used to bypass keyword based blacklists. It includes an examination of the generic functions that can be used to interact with streams, the concept of stream-context and steam filters. It also looks at PHP wrappers in RFI attacks and bypassing blacklists. Code samples are supplied throughout.'),
(3, 3, 'Using Google Bots as an Attack Vector', '\r\nThis article examines the latest attack vector to surface: using Google Bots. It examines how search engines sue bots to help index websites, explains how such attacks happen and how to counter them. Code samples are included.'),
(4, 4, 'Negative Impact of Incorrect CSP Implementations', 'This blog examines incorrect CSP implementations on the New Yorker and Blogger, common issues in CSP implementations and solutions, how to determine if your CSP implementation is problematic and how to test it with the Report Only monitoring mode. It also lists CSP directives and their keywords, and how to use CSP correctly.'),
(5, 5, 'Pros and Cons of DNS Over HTTPS', 'This blog post introduces the Domain Name System and what happens when a browser issues a DNS request. It then explains the technical basics of its successor, DNS Over HTTPS (DoH), why it is unavailable on your Android phone and how to circumvent this. Finally, it examines whether it enhances security and privacy, and how to disable it.'),
(6, 6, 'Netsparker to Exhibit at Black Hat Europe 2018 in London‎', 'Visit Netsparker at booth #802 during Black Hat Europe 2018 in London‎ to learn more about our dead accurate web application security scanner. '),
(7, 7, 'Netsparker\'s Web Security Scan Statistics for 2018', 'Over the last three years the online edition of the Netsparker web application security solution scanned thousands of web applications. In this report we analyse the type of vulnerabilities and security flaws the scanning engine found in thousands of web applications. '),
(8, 1, 'The Dangers of Open Git Folders', 'This blog post examines the research of Finnish computer scientist Vladimir Smitka on the dangers of open version control system Git files. We discuss his results, how prevalent it is, why the structure of Git makes it so convenient for hackers, how you can check if your Git folder is open and how to protect your folders.'),
(9, 2, 'NoScript Vulnerability in Tor Browser', 'This blog post discusses the 0-Day vulnerability introduced into the Tor Browser\'s NoScript script blocking extension, originally designed to allow users to block JavaScript from running, and how it could have been disabled it in order to potentially unmask Tor users with a JavaScript exploit. It includes an explanation of the exploit code.'),
(10, 3, 'Analyzing Impact of WWW Subdomain on Cookie Security', 'This blog post provides an introduction to subdomains, why we use WWW and analyzes the impact of the WWW subdomain on cookie security. Then, it examines why we use WWW and how to set the domain attribute of cookies. The post includes two case studies and code samples.'),
(11, 4, 'September 2018 Update for Netsparker Enterprise', 'This blog post announces new features, improvements, security checks, improvements and bug fixes in the latest Netsparker Enterprise release of September 2018. Highlights include: integration with ServiceNow and Slack, a new Report Policy Editor, and Security Check updates similar to those just released in Netsparker Standard 5.1.'),
(12, 5, 'Netsparker Sponsors BSides DC 2018', 'This October our team will be exhibiting the Netsparker Web Application Security Scanner at BSides DC 2018. '),
(13, 6, 'September 2018 Update for Netsparker', 'This blog post announces new features, improvements, security checks, improvements and bug fixes in the latest Netsparker Desktop release of September 2018. Highlights include: a new bulk export to cloud feature, send to integration support for ServiceNow and custom field support for send to fields.'),
(14, 7, 'How to Integrate Netsparker Cloud with Slack', 'Slack is a team messaging system that facilitates communication in enterprise teams with a series of channels. This topic explains how to integrate Netsparker Cloud with Slack, manage integrations, configure a notification to report security issues to a Slack channel or Direct Message (DM) and view notifications while creating a scan. '),
(15, 1, 'Working with Custom Report Policies in Netsparker', 'This blog post describes and explains Custom Report Policies and how to create them. Two significant report customisations are possible: excluding a vulnerability from the web security Scan Report and changing the Severity Level of a vulnerability. Excluding a vulnerability means that the vulnerability is not reported in the scan results or report. '),
(16, 2, 'Sven Morgenroth Talks About PHP Type Juggling on Paul\'s Security Weekly Podcast', 'Watch episode #572 of Enterprise Security Weekly in which Sven Morgenroth, one of Netsparker\'s Security Researchers, talks about data types and type comparisons in PHP. Sven then demonstrates vulnerabilities that can arise due to loose PHP comparisons, including Authentication Bypasses, crypto-related flaws and Hashing Algorithm Disclosure.'),
(17, 3, 'Netsparker to Exhibit at OWASP AppSec USA 2018 in San Jose', 'Visit Netsparker at the Diamond Sponsor booth during OWASP AppSec USA 2018 in San Jose to learn more about our dead accurate web application security scanner.'),
(18, 4, 'Vulnerability Assessments and Penetration Tests', 'This blog examines the difference between vulnerability assessments and penetration tests by defining both, and explaining the different results each produces. It also contains advice as to which approach your organization should adopt, and the scenarios that help determine this choice. There\'s guidance on which to use and how much it might cost.'),
(19, 5, 'Final Nail in the Coffin of HTTP: Chrome 68 and SSL/TLS Implementation', 'In this blog post, our Security Researcher Ziyahan Albeniz examines the latest Chrome release, which makes secure web connections the new standard by checking the validity of secure TLS certificates. This article examines encryption keys, certificates and certificate authorities, HSTS, HPKP, SRI and CSP, and concludes with some code examples.'),
(20, 6, 'Detailed Explanation of PHP Type Juggling Vulnerabilities', 'This article provides an introduction to PHP Type Juggling Vulnerabilities and loosely typed code and type comparisons, and how to avoid or fix them.'),
(21, 7, 'Leverage Browser Security Features to Secure Your Website', 'On June 27, 2018 Ticketmaster UK announced a data breach incident. This time, one of JavaScript\'s unexpected limitations prevented a security incident at least for Turkish users. This blog post discusses how leveraging browser security features, such as Subresource Integrity and Content Security Policy could have secured their website.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `password`) VALUES
(1, 'olivia', 'Olivia Smith', '123123'),
(2, 'emma', 'Emma Johnson', '123456'),
(3, 'ava', 'Ava Williams', '654321'),
(4, 'charlotte', 'Charlotte Jones', '123654'),
(5, 'mia', 'Mia Brown', '321654'),
(6, 'sophia', 'Sophia Davis', '321456'),
(7, 'isabella', 'Isabella Miller', '564231');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
