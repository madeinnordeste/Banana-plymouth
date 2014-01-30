### Banana Plymouth

Tema para plymouth

## Para instalar siga os passos:

1 - Mova a pasta 'banana' para '/lib/plymouth/themes/banana'

	sudo cp banana /lib/plymouth/themes/

2 - Instale o tema com o comando:

	sudo update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/banana/banana.plymouth 100

3 - Configure o tema como padrão ( escolha o numero do tema )
	
	sudo update-alternatives --config default.plymouth

4 - Atualize a imagem do boot
	
	sudo update-initramfs -u

5- Reinicie e veja o tema!


