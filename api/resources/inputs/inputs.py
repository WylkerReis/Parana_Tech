from faker import Faker



fake = Faker('pt_BR')

nome_fake = fake.name()
apelido_fake = fake.first_name()
email_fake = fake.email()

def retorna_body_post(): 
    return{
        "name": nome_fake,
        "username": apelido_fake,
        "email": email_fake,
    }