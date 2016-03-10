  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpmovzxbq %xmm2, %ymm8           #  1     0     5      OPC=vpmovzxbq_ymm_xmm        
  vmulps %xmm2, %xmm1, %xmm0       #  2     0x5   4      OPC=vmulps_xmm_xmm_xmm       
  vpunpckhqdq %xmm0, %xmm0, %xmm3  #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vfmadd231ps %ymm8, %ymm8, %ymm3  #  4     0xd   5      OPC=vfmadd231ps_ymm_ymm_ymm  
  vaddps %ymm3, %ymm0, %ymm3       #  5     0x12  4      OPC=vaddps_ymm_ymm_ymm       
  vmovshdup %xmm3, %xmm8           #  6     0x16  4      OPC=vmovshdup_xmm_xmm        
  movq %xmm8, %xmm1                #  7     0x1a  5      OPC=movq_xmm_xmm             
  retq                             #  8     0x1f  1      OPC=retq                     
                                                                                      
.size target, .-target
