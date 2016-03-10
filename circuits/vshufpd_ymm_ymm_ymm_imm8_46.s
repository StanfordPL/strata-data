  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  maxsd %xmm2, %xmm2             #  1     0     4      OPC=maxsd_xmm_xmm          
  punpcklqdq %xmm2, %xmm2        #  2     0x4   4      OPC=punpcklqdq_xmm_xmm     
  vunpckhpd %ymm3, %ymm2, %ymm3  #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovdqa %ymm3, %ymm1           #  4     0xc   4      OPC=vmovdqa_ymm_ymm        
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
