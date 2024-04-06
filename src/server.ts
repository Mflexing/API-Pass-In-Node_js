import fastify from "fastify";

import fastifySwagger from "@fastify/swagger";
import fastifySwaggerUi from "@fastify/swagger-ui";

import { serializerCompiler, validatorCompiler, jsonSchemaTransform } from "fastify-type-provider-zod";
import { criarEvento } from "./routes/criar-evento";
import { registroDeEvento } from "./routes/registro-de-eventos";
import { getEvento } from "./routes/obter-eventos";
import { getCredencialParticipante } from "./routes/obter-credencial-de-participante";
import { checkIn } from "./routes/check-ins";
import { obterParticipantesEvento } from "./routes/obter-participantes-do-evento";



const app = fastify()

app.register(fastifySwagger, {
    swagger: {
        consumes: ['application/json'],
        produces: ['application/json'],
        info: {
            title: 'pass.in',
            description: 'Especificações da API para o back-end da aplicação',
            version: '1.0.0'
        },
    },
    transform: jsonSchemaTransform,
})

app.register(fastifySwaggerUi, {
    routePrefix: '/docs'
})

app.setValidatorCompiler(validatorCompiler);
app.setSerializerCompiler(serializerCompiler);

app.register(criarEvento)
app.register(registroDeEvento)
app.register(getEvento)
app.register(getCredencialParticipante)
app.register(checkIn)
app.register(obterParticipantesEvento)

app.listen({port: 3333}).then(() => {
    console.log("HTTP Servidor Funcionando!")
})