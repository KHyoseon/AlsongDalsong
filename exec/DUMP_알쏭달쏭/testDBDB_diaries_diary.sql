-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: asds.cspd92r3jqje.ap-northeast-2.rds.amazonaws.com    Database: testDBDB
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `diaries_diary`
--

DROP TABLE IF EXISTS `diaries_diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diaries_diary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(176) COLLATE utf8_bin NOT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL,
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `bookmarked` tinyint(1) NOT NULL,
  `created_date` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `diaries_diary_user_id_89b758d8_fk_accounts_user_id` (`user_id`),
  CONSTRAINT `diaries_diary_user_id_89b758d8_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaries_diary`
--

LOCK TABLES `diaries_diary` WRITE;
/*!40000 ALTER TABLE `diaries_diary` DISABLE KEYS */;
INSERT INTO `diaries_diary` VALUES (1,'kNRW8Ts58R0SC7l+PaOCStTunmqEASXr62SiKXpCauM=','FfutSkow4nXv2OYh8CmNXToCSPVpVENhu9jD3P7lX775eOYeZNxwl2h8M6ZGXagU','2MiqEYX90lGbpeiCb8/JHWuhWeAxVxfpnP9BfubIH8U=','2022-10-07 01:40:55.572514','2022-10-07 01:40:55.572553',1,0,'2022-10-07'),(2,'SDziYQoD8O1v1papF01RyKfwpZU11dDS6DSd42zX1y0=','863Yztqd3tYb59NuPoOsKJryvEJja6SDz7cZBaoMQ4T5yJW2rwxhir56ywpnH5Cx','LNnr6LGjMbqwWbABwKqFvkGoMbT1r79ubHzrYfGm6S8=','2022-10-07 01:41:36.215942','2022-10-07 01:41:36.215990',1,0,'2022-10-08'),(3,'nQ7JbSYeOGEvR6Cx7DNmLiXIHi0Pne6Q/vYrUDcHu4X4KETdLOQYKNWCM6jFHnNR','ZYFCEq5L1GMLuGX9idxEzZDexNhGaJZadjy+zdYoUYI=','kzhWbNkKGiI/cZHdaX/qafht0NNTm3om+k/+EU0kfbU=','2022-10-07 01:42:08.590837','2022-10-07 01:42:08.590899',1,0,'2022-10-04'),(4,'MjVALHOo0jBBmTYL7D54bDRZD1pcoFLrIAYyG3BZo9M=','ZlvOSi2IigGEFUMknh+FzhKLw7/2eRElzE2KYPwsSZc=','yBqOQ7thvN/DzYimGRMR39q+eo6iyD3Ka2k4m4/MZjI=','2022-10-07 01:42:11.440007','2022-10-07 01:42:11.440051',2,0,'2022-10-07'),(5,'VKcieNC2LLtW3Db+SfMr1zJQMfoBg7/lpnbcn7JqLvg=','ozqroyxnNKSBN4o08LjwiVP+y5SZ47ryzNn6xR3rqzU=','tIaBWaRZnYf8HzWK3/3TygxtopTDWc64/5yu4tUQWW0=','2022-10-07 01:42:26.316413','2022-10-07 01:42:26.316453',1,0,'2022-10-02'),(6,'D5dDnL7KULkYQZetQurOmkhj7IVevs75+1qdLDp7TKc=','atXOIAnLwSncn4xJ/lFb3IHcN2hy9a8gDcPHGINNApQ=','rqtBg18ONDWdw6Typpt1e5VyNiKDQF/v/lPnH+U2hMM=','2022-10-07 01:43:38.105306','2022-10-07 01:43:38.105353',1,0,'2022-09-27'),(7,'nLp02covKBq2cjeQPIW5P7r2vI4EKJV8siiU+hx9OYU=','sHtoxqyo8gADXtUHvZSn+ZQfaqaKBSaO4S2w4RHLXQY=','HExACFRPFMJ3bOeEYC7KVd7Z55h9XeTSUQbmsXbGj8I=','2022-10-07 01:44:10.424336','2022-10-07 01:44:10.424378',4,0,'2022-10-07'),(8,'/rHnsTWuqhTKfkM/4rThV9qEmHRK0JCOCJBGYJqCsBc=','ijFLQWuv/bO2dpYkNbS8xPc5tkY+W83vOmPYebIJnhRZmN5pgojTK2YI9PPOhJkf','BA2ijJMOmhEqRn8dYHNIjm/4qQhlFcKJGYjGLyn6Ddc=','2022-10-07 01:44:51.944146','2022-10-07 01:44:51.944197',4,0,'2022-10-06'),(9,'6qHUj28cXVBLvsaZZtHCuAdyJmZzCX3GXNgAY24qnCk=','/NFXNQb8rWWK3zg83TPIFAzAAvse3jD5FvR/Umi3q7zFlawKanxzRhveYEU4n6EReCxlb2R4eBsZFVMRWC4XCw==','b2GuyQDvl1IjXdCoMsWZByWQNUdMA20Ae9okRoK+7IY=','2022-10-07 01:55:41.155596','2022-10-07 01:55:41.155673',4,0,'2022-10-04'),(10,'BoAiHFxrxJINyDh4Qk8LWUvASMs3+KAXnfasYsyBkdw=','vwkSJ9bCe9wy2gXqtPYxBZAExKR8qp5hmXlu8C56ZLXGsRkjlIzPLVTdHYFO0xUl','9d+rCqkojmzyGUNjh3c2E3KCGVXQbgh6Q8KLhdb0DAQ=','2022-10-07 01:56:30.013232','2022-10-07 01:56:30.013286',4,0,'2022-10-18'),(11,'fISmaEXM4Wo35/BPW1OM4hOIPP4Xbuas8CnzYr2ldss=','YJpN7lzHU0fi7zJ8UqcKUtDUkWvtgtyeKo6bpju3CGym41brAlKSkM9lHZJ40ZCV','LLAxWHXQFpeGMMUvsd7NBoNacF9IXDNm+FH3T9EglfQ=','2022-10-07 01:57:38.218950','2022-10-07 01:57:38.283238',4,0,'2022-10-01'),(12,'W8xZq7fiUQp3SKV6Mh8EN/KSYvs7a1JSCxoUehKDpK4=','+3lbkD8O2kL/EUukqmEg8r59RsevHOKOvcPj/UACJT4=','FHcFzIMvpRYX0C0ECsixXSccgxnpWWQZRqE0zsKvjMM=','2022-10-07 01:58:43.859425','2022-10-07 01:58:43.859475',4,0,'2022-10-27'),(13,'6brKtOcBL1ENNH+1164Pc9LFcfoJNfC+YATgZ4gnGEg=','VyIR9OWHoeF/EwtFYlJUZMmDlAJfKfaPD477pEzOJwI=','+bBGGK6mOhvXDB6hZc91DCkTWzX2bDsOl2ASMY1Mjmo=','2022-10-07 02:00:12.838993','2022-10-07 02:00:12.839047',4,0,'2022-10-08'),(14,'hPNnIgfNqAOsv7tkKTjluSIwgSzZkbd/BYd4B771VZQ=','DQZ2BTAac7sJA79LioNUB7nQdBHBJXJ1HsfjTfQvKgjTvnTaWiVVZGsIQz6Cm1/z3wDn49+nC1Z3L5R9BBaxVQ==','pDHEWpR35dFbvkcPbkXj85OzYugxeGEXG7Cyt4Sjgm4=','2022-10-07 02:01:11.358126','2022-10-07 02:01:11.358183',4,0,'2022-10-26'),(15,'6Qfvw1vn8MDmfYAeyp5hKCLnlNRC/11x/ThelNpOMeJaBnZlrLs9fsjSU4xkjGJ3','1FxQZeKtNncVGfc5Tww/iwmDVBjJk+3k2OJlGpquCXpn2rG/pysktcXGz/o/suvNRs9ecxLgjxBqXte6LKXe6jJk/BfH//jgjghzeEQR5KWrKSbrRf8jo25a4qofBXO3ZfOsmJZ7j80/ZJjZ/ZdrSQ==','U7Xnr+j2yAtodNXMJwhLVMowAeLu5GKA4n4VDstCC38=','2022-10-07 02:07:49.065514','2022-10-07 02:07:49.065567',3,0,'2022-10-07'),(16,'E7sqWWcvmU+HKiwZf/bdDy6Ozt3A9CgEbVzdRs6tSsI=','ctez9EtqChWsKnqq+EkMXpX05EB1K7sqBhCgxyMWV6U=','xaq/25myX3QwT3tmvPNNUCUB5/xB9QcfwIx61ePoOvo=','2022-10-07 02:08:26.357251','2022-10-07 02:08:26.357291',4,0,'2022-10-02'),(17,'az1+BfM68htg+IcE1NDSnUtereCU4Gn2r55rBkasHB4=','Q/RzPHFfcDxKU7Xwtb/YdELaaigkrC1hmb6cF0RqKxQ=','yxgzEnzfxN/4NBryBEuxezxnZwZ3H2Coywt35BkSdCg=','2022-10-07 02:09:15.196843','2022-10-07 02:09:15.196897',4,0,'2022-10-03'),(18,'nQoLwl2KiBcy4V5EXRU8SQy24xzJve0MWT+GF+6WERg=','cPRKFeCh8UnifUKvs/+mODSFXlxkVmZvLDYXUlz4eB0=','O0D8eTRn2U3w7DWkWcSqTUR0rzQ71/EfYvfELM9tNzo=','2022-10-07 02:17:38.684465','2022-10-07 02:17:38.684522',4,0,'2022-10-21'),(19,'CCedLVFXLLR6NQU2bs/qpZGvE2ONxqYdhGmDSqrXp0tiPOv7M9kW5HGfCSTySjtt','1OuxRlBbRmXXNmi9FXUMl9JRa6AqON/ax588S0vXgeoKmabpaRjIypyZ8RtfHa258KW3v4Jljqg/WdYWW8B7e4lPLVOgPDgr3PZrTC9Wi8hRy1Ei3rIXTwwHypyoy+3iGg1Szn6zyJJltHR6i5BERg==','OLSjWkbxsJ50Lkaw0OU9tKokdPYjU2LEyRIGzFR1Cvc=','2022-10-07 02:21:19.121870','2022-10-07 02:22:49.353323',8,1,'2022-09-07'),(20,'1EnKCAcBVbE5oF2LVpEwI81AHWq7eEes3VyfNg0dLf4=','+e5ZJmXgeizdM0QBiRfjBNlFf8us1wjEyyKEv4EAg1c=','VXD15ig7xFKIZQau8E+T5I1U6duIsR6eFRCIGbHe4Ho=','2022-10-07 02:23:06.267169','2022-10-07 02:23:06.267210',8,0,'2022-09-09'),(21,'NQa7mFEFtO1H22/1WqMF/639SxqeoaxSfttqmRNqYtU=','/gi8A98ge2Naw8/3TJXXcFlBWFO+iT5/XlrKQYNY4KI=','GggtTKuEWD3ikzdGGAspTfRshOqCcQYxYfn9FAdM7qc=','2022-10-07 02:23:28.503159','2022-10-07 02:23:28.503200',8,0,'2022-09-12'),(22,'ZHMgSy4jjjG3fGa13qznFx3yYE7s0P3DfQFH5G5wAlc=','KA/7bWbsRGpa1Uj8axdq1siHWQ5roL1n8ooCaBuCVHI=','PZCR7P8HAHeenQVCvK+IcQSnt3tXV870TnhCoOIf9Qk=','2022-10-07 02:27:11.697068','2022-10-07 02:27:11.697104',8,0,'2022-09-13'),(23,'06zGwqDzF2OEjHzmoDK62fiI44Ag3B8TCYvABjrffGw=','gJCTkMOTJRUkyapWfSLRkmG05d6f6xc1+WHTz3Pc+g4=','B0lxsMAxBYIardjt+jx9693eTBqIY5xutBYpsv92Py8=','2022-10-07 02:27:40.212880','2022-10-07 02:27:40.212922',8,0,'2022-09-08'),(24,'OumHP5F1VcX1JwoTWwKLzDtAK347Fz6rZExLid73fWk=','hdaiTQrlb7iqSC56gDe9Rr0widaezik6rHnRmLKwtk+0yf0mFSsYeKu8ysUoYljCQKO6gKGgQkagRD/2kScapBj1+f7JDO+NuZADAdN2acp49SwQFTh0xV7CsH/B246a','QI+n1kJfdwqOqLkC9ZVDhR7aP5BLDohFgHacJ5gjmfg=','2022-10-07 02:28:40.213844','2022-10-07 02:28:50.174725',8,1,'2022-09-14'),(25,'KctbKw2RFzO865FH79NW9LVzqD3S3orX/7OpiX8LCEs=','duVFYwwsFtKNhFEXN7Ll2U+HYGH02PacH+g4Kmo0Lm8=','SZqLntpPNrWAU5huPrI6s/wjVzW5MTyjXIpz1BnovKw=','2022-10-07 02:37:57.951995','2022-10-07 02:37:57.952050',4,0,'2022-10-15'),(26,'XzimAoFwPdAuBva2wkl69vog2QOhKgs4XtS3QQ7/gJ4=','VAl0Tb2IaAybK6kQ4MVp96mGY2odvloFt2aWvDHSDJc=','nv39Czb/l232GjJM1tF2SJAo8u864iBkqlE49LippWo=','2022-10-07 02:38:36.284253','2022-10-07 02:38:36.284294',4,0,'2022-09-27'),(27,'MAPt1Nt6j+6qgaTD5b9PwqTv7PXHKcVr6z6vuj15GWY=','xxHsPTS0RKo6dcuoP6v36raPy0lsTSqMWSSvss4yrtdpBsWYdR4GTlLFh+hMJ2g9','j2LZ8ioCJ22LWb4C1MYpF5LLP00PvK15uw+HqJ5NEug=','2022-10-07 02:38:50.771681','2022-10-07 02:38:50.771730',8,0,'2022-10-04'),(28,'LUtF+RboxWAlLqczcQrKi6f8lnv7N9RgTqEYdEDdYUc=','0OXd9UuUGaJcbRCk4G/aCgMPtgCKgm/GmkVztn8i9MhCPMokPyWz9FFJeiSqLG8FvmUGcvQjZlDMVwl0qjOzGTEOS7JJD9mNVJCMdYUTX+d7i3nYP7BGUXott21UEY37UtCmELYPVkzeKRIn8lVhcw==','LDEbIpYG4ZJtEh/97o8gB7wTtyVga/DwGLpwulM3Zmk=','2022-10-07 02:40:38.656762','2022-10-07 02:40:38.656826',8,0,'2022-09-22'),(29,'lSXRSFJIFnscKCjXWTWwb5pmEHqPr6+pg0N5HUYLBeU=','LVl48RqO+GJYcpD8mbdOiScwM44AitefgsGheofxr9aOhikNwzlPpCjnFup/xpVMM4RJ++YP+echzSAIRbb1+zZiFOm+YoWdJIE2ybkxC+2uVIhqb0myqSd2labw1AJcZapJiAnUlq4pVo+XOjyb4lrNCDKi8e5ur5UxNsd2iWCkjghuhnkrMM/fSZiUAQQC','aaGuiiGdIwG9N/ICFJCKOTZckEbOvvXRZPidkjCmCtI=','2022-10-07 02:48:17.115542','2022-10-07 02:48:17.115593',8,0,'2022-09-19'),(30,'GTxr+Uy2XVuB+kG5h7noOO/EU8MZjeXIHeX1HBamjYE=','1wK+Aj80gmxsBgEFCx7ph1E0z1wYnSLh4F2vg5bUMokc6Pu26NraUqg4hBe5sIgvVW1Oyo9NVLsssetUYN5LjQc53uFTgvK9muX6XoLQkCz09TQ08IYQPLnWytjusT2xcb7vYik74iV28e0/n2322Q==','ZxX6HaO65P+sAyVaXjusMWvqAB9ODK/xPOy/tY+a9RU=','2022-10-07 02:52:24.839191','2022-10-07 02:52:24.839243',1,0,'2022-10-05'),(31,'8yDnPE/mTTfhnEls6z4hKs+DCsnAxw2DRHWxYKeXMz4=','jQrperT+k5U0cRPS14IVQxooL6Vz1fzESeOdHAB3gk30DK0esjI7U9jNLgLTdoHzaZI3sxlo+5Z4v+w37H4AFCQx2Wk/5hX86g5qNlk3T6p5QsglCSwUHt8H5ksJj41HNAh26q8Y7utA7et/SD+R/fQiJt0kcQ7p4vxPAKGKIZxW2UBi1NAHt+0YadHrwVlDbsJ7H1a+NoBb+VVlCdRtcA==','bIfjozikf5bVLIiMsOF8J8LQwGndmSKkC3VPRrfx2Pk=','2022-10-07 02:54:11.140549','2022-10-07 02:54:11.140601',8,0,'2022-09-16'),(32,'iJ6YOANAE0ExToLbIDHKYoV9+LlX6QVtEt0CXxkMitE=','hL5a30ddMNPro6SmIAyskxKMat4+uvRFlnCAvdgSLPxSWlYJCeyGoSo9K6a+fTSUyTE9p2/N1MuvQ8IwEzbfAjpyIP1n0C1/ZXPUEE4Cl+NJokW6Ul+A1gcsddLwh/ouN2vLQe2GKlDAQ5XwXwZp1g==','FjatJiQZdX9N664xHFpEP3hQf8WJu2C2+JKjzhMksss=','2022-10-07 02:56:11.392711','2022-10-07 02:56:11.392752',1,0,'2022-10-28'),(33,'knzAMiV+eWOHHynmp1G+lQD/zHDwjPAQi2TdhOotFzU=','JOd4XgiospOOo3iKOe3ldvgxAPU/cQ030M6VDqJ+JEtcEu50lSMOvRxshS0dUyxs','S9ulqVj2spcMaagSpU3uAqbqWwB/roQbch/hvUDJOyc=','2022-10-07 02:57:44.757108','2022-10-07 02:57:44.757154',1,0,'2022-10-17'),(34,'5XWgvJ9CvEdVdYDSADR+QQN0CVuwahtED8HEyj5YyNYpLcHe01TaDEh1le3Fbg4W','hvHohupUuWD6Irf93O0jT0rSB+SqZlzChUTCg4ItwpcncoJpc/2HpkrhQQXaYkiS8jJx3oPadjEZoFm9mZlJNpjyS2nNU74UhjH113IYQiFxu4mUftsSe68wFWfsRyHrhZqc9lfY2UV+3EAvt6ZetESwYoWJcruCIyyGbQ+i058=','UAW8DxVfLtnRitExzwWAIObgkuG37nvbkHj0apMVXQg=','2022-10-07 02:59:20.317975','2022-10-07 02:59:20.318033',1,0,'2022-11-01'),(35,'Gv0HE0Fd3rzw5PKe6hRRDO3AX6wXzFnP6BwtJiWN5Qs=','WE44uQ8TJsjsHBMURFEao5tiK3CmSHLyeHGOt8OSV44=','X3FrJL5/QoHvP4IBbN4X+MWClWcB7gMJK+T++sSfKFU=','2022-10-07 03:05:26.191660','2022-10-07 03:05:26.191717',1,0,'2022-09-29'),(36,'IpCY6/IKUxr8HpmMtJqpGf65EW4bOwxnzXsIEwxpObY=','ewn4PFWJdo/mpOsQudFyGz5IM8ApKTSiB7K/m7CoDhw=','Dxa/he6kQxmdMQ7NaRRiiE9a0xHlNzZhB2DYH2ROioc=','2022-10-07 03:06:17.518036','2022-10-07 03:06:17.518088',1,0,'2022-10-29'),(43,'KXShnk29map/yfEZocGH5a18Kgy5V6dVVnNgnxHDiDk=','7tHkEQds/XvYMcLfmJWVuVp8kCd6I3RHdzWeWKXDqHg=','zTcd2S2w0JESg78EMdWfFl4FsBEOEBYgZeGyXGOQ72Y=','2022-10-07 03:44:49.639716','2022-10-07 03:44:49.639772',4,0,'2022-10-23'),(44,'nQqAsBKpYIFph5gwWXRdSJFA/vz+C+y2Zf2Td0P0ObQ=','s+mA0JEeSb+pMVe3oadVty5M2dmqvEdqU+VkGEWD0T0=','m3TI00pGeY2pAj9Rlng8eIBuuxnb/OqbPpLBLJm/hic=','2022-10-07 03:45:13.563035','2022-10-07 03:45:13.563088',4,0,'2022-10-31'),(45,'ReXr0iE344xtULAGLitbcIk1cjnkRW1AhvgarTGRwQM=','r/MBqoOdU/hJs0xC44JJytBeC1uHuzDXxH9IKK/xbXYn6Bl48DWWDf3PVoaH5g6lXUecIT2lAI7XDLabPFzQz1vuMsOC5VIUC+tki4e6NmstGbW8+iL5dHaikM8nIhZasqdLKdTN96r7L56Y6701uc0eBY4uZGona1SLP1DNj4KiUXVJtTpyBCTB6GcEyA0baRv7svu2xhQFkXvMTnFpvw==','UVsA3gNYvuACBGLVbaRLF3LbIWXe+9KEXRDrMuTT4J8=','2022-10-07 05:29:32.378809','2022-10-07 05:31:13.498877',8,0,'2022-10-07');
/*!40000 ALTER TABLE `diaries_diary` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-07 15:27:05
