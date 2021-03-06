  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovddup %ymm2, %ymm1          #  1     0    4      OPC=vmovddup_ymm_ymm       
  vunpckhpd %ymm1, %ymm2, %ymm1  #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm  
  movdqa %xmm2, %xmm1            #  3     0x8  4      OPC=movdqa_xmm_xmm         
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
