
def criptografar(texto):
    return ''.join(chr(ord(c)+2) for c in texto)
