// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
    modules: ['nuxt-icon'],
    runtimeConfig: {
        serviceId: '',
        templateId: '',
        keyPublic: '',
        public: {
            apiBase: '/api',
            serviceId: '',
            templateId: '',
            keyPublic: '',
        }
    },
    app: {
        head: {
            charset: 'utf-16',
            viewport: 'width=500, initial-scale=1',
            title: 'timothee-picard.dev',
            meta: [
                { name: 'description', content: 'Portfolio de timothée picard développeur web frontend' }
            ],
        }
    }
})