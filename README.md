# ddev
<h1>*December 2022*</h1>
<h2>Information on Patch Script:</h2>
<h2>Ian's Ddev install looks to be receiving error currently during last phase Ddev install:</h2>
        <li>https://github.com/ian28223/Datadog-ian/tree/master/ddev</li>
<h2>"Build Wheels for memray" module error:</h2>

![eeb6db45-94e1-45ef-a14f-6bce846ee17e](https://user-images.githubusercontent.com/107069502/207773531-dd29d629-e4b9-4b7f-b5e6-96c66fd834c4.jpg)

<h2>1. Installation of needed Memray binary dependencies:</h2>
<ul><pre>libunwind-dev</pre></ul>
<ul><pre>liblz4-dev</pre></ul>
        
<h2>2. Install Pyenv/Repositories using Ian's One-Line Install</h2>
<pre> eval "$(curl https://raw.githubusercontent.com/ian28223/Datadog-ian/master/ddev/pyenv_ddev_setup.sh)"</pre>
<h2>3. One line Patch script install</h2>
<ul><pre>eval "$(curl -O h</span>ttps://raw.githubusercontent.com/Dog-Gone-Earl/ddev/main/pyenv_ddev_patch.sh)"</ul>
<ul><h3>*Note referenced error occurs @ the end of script*</h3></ul></pre>
<h2>4a. Donwload pyenv_ddev_patch script:</h2>
<ul><pre>curl -0 h</span>ttps://raw.githubusercontent.com/Dog-Gone-Earl/ddev/main/pyenv_ddev_patch.sh</pre></ul>
<h2>4b. Insect File (Trust but Verify)</h2>
<ul><pre>vim pyenv_ddev_patch.sh</pre></ul>
<ul><pre>nano pyenv_ddev_patch.sh</pre></ul>
        
<h2>4c. Run the Script</h2>
<ul><pre>sh pyenv_ddev_patch.sh</pre></ul>

<h2>5. Open a new terminal for pipx changes to go into place<h2>
