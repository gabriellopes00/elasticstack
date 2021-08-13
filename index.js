const express = require('express')
const ecsFormat = require('@elastic/ecs-pino-format')
const pino = require('pino')

const log = pino(ecsFormat())
const app = express()

app.get('/', (req, res) => {
  log.info('GET requested handled')
  res.status(200).json({ message: 'asdf' })
})

app.put('/', (req, res) => {
  log.info('PUT requested handled')
  res.status(200).json({ message: 'asdf' })
})

app.post('/', (req, res) => {
  log.info('POST requested handled')
  res.status(200).json({ message: 'asdf' })
})

app.delete('/', (req, res) => {
  log.info('DELETE requested handled')
  res.status(200).json({ message: 'asdf' })
})

app.listen(7456, () => log.info('server started successfully'))
