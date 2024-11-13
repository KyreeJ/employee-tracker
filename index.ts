import { Router } from 'express';

const router = Router();

router.get('/departments', (req, res) => {
  res.send('List of departments');
});

router.post('/departments', (req, res) => {
  res.send('Creating a new department');
});

export default router;

