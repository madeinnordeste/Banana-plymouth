### Banana Plymouth

Tema para plymouth

## Para instalar siga os passos:

1 - Mova a pasta 'banana' para '/usr/share/plymouth/themes/banana'

	sudo cp -r banana /usr/share/plymouth/themes/

2 - Instale o tema com o comando:

	sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/banana/banana.plymouth 100


3 - Configure o tema como padrão ( escolha o numero do tema )
	
	sudo update-alternatives --config default.plymouth

4 - Atualize a imagem do boot
	
	sudo update-initramfs -u

5 - Reinicie e veja o tema!


### Para testar

	sudo apt install plymouth-x11

	sudo plymouthd ; sudo plymouth --show-splash ; for ((I=0; I<10; I++)); do sleep 1 ; sudo plymouth --update=test$I ; done ; sudo plymouth --quit

