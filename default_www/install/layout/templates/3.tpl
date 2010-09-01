<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<meta http-equiv="X-UA-Compatible" content="chrome=1" />

	<title>Installer - Fork CMS</title>
	<link rel="shortcut icon" href="../backend/favicon.ico" />
	<link rel="stylesheet" type="text/css" media="screen" href="../backend/core/layout/css/screen.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="layout/css/installer.css" />
	<!--[if IE 7]><link rel="stylesheet" type="text/css" media="screen" href="../backend/core/layout/css/conditionals/ie7.css" /><![endif]-->

	<script type="text/javascript" src="../frontend/core/js/jquery/jquery.js"></script>
	<script type="text/javascript" src="js/backend.js"></script>
	<script type="text/javascript" src="js/install.js"></script>
</head>
<body id="installer">

	<div id="installHolder" class="step3">
		<h2>Settings</h2>
		{form:step3}
			{option:formError}<div class="formMessage errorMessage"><p>{$formError}</p></div>{/option:formError}
				<div>
					<h3>Modules</h3>
					<p>Which modules would you like to install?</p>
					<ul id="moduleList" class="inputList">
						{iteration:modules}
							<li>{$modules.chkModules} <label for="{$modules.id}">{$modules.label}</label></li>
						{/iteration:modules}
					</ul>

					<h3>Languages</h3>
					<p>Will your site be available in multiple languages or just one? Changing this setting later on will change your URL structure.</p>

					<ul class="inputList">
						{iteration:languageType}
							<li>{$languageType.rbtLanguageType} <label for="{$languageType.id}">{$languageType.label}</label>
							{option:languageType.multiple}
								<ul id="languages" class="hidden inputList">
									{iteration:languages}
										<li>{$languages.chkLanguages} <label for="{$languages.id}">{$languages.label}</label></li>
									{/iteration:languages}
								</ul>
							{/option:languageType.multiple}
							</li>
							{option:languageType.single}
								<li id="languageSingle" class="hidden">
									{$ddmLanguage} {$ddmLanguageError}
								</li>
							{/option:languageType.single}
						{/iteration:languageType}
					</ul>

					<div id="defaultLanguageContainer" class="hidden">
						<p>What is the default language we should use for the website?</p>
						<p>{$ddmDefaultLanguage} {$ddmDefaultLanguageError}</p>
					</div>

					<h3>Example data</h3>
					<p>If you are new to Fork CMS, you might prefer to have an example website set up.</p>
					<ul class="inputList">
						<li>
							{$chkExampleData} <label for="exampleData">Install example data </label>
							<span class="helpTxt">(The blog-module is required and will be installed)</span>
						</li>
					</ul>
				</div>

				<div class="fullwidthOptions">
					<div class="buttonHolder">
						<a href="index.php?step=2" class="button">Previous</a>
						<input id="installerButton" class="inputButton button mainButton" type="submit" name="installer" value="Next" />
					</div>
				</div>
		{/form:step3}
	</div>

</body>
</html>