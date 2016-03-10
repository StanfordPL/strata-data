  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovddup %ymm3, %ymm1          #  1     0     4      OPC=vmovddup_ymm_ymm       
  unpcklpd %xmm2, %xmm2          #  2     0x4   4      OPC=unpcklpd_xmm_xmm       
  movdqa %xmm3, %xmm1            #  3     0x8   4      OPC=movdqa_xmm_xmm         
  vunpckhpd %ymm1, %ymm2, %ymm1  #  4     0xc   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
