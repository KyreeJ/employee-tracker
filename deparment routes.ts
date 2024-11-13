import { Router, type Request, type Response } from 'express';
const router = Router();


router.post('/', (req: Request, res: Response) => {
  
});

router.get('/departments', async (req: Request, res: Response) => {});

router.delete('/employee/:id', async (req: Request, res: Response) => {});

export default router;