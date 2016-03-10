  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovups %ymm2, %ymm7           #  1     0     4      OPC=vmovups_ymm_ymm        
  movupd %xmm2, %xmm6            #  2     0x4   4      OPC=movupd_xmm_xmm         
  movddup %xmm6, %xmm2           #  3     0x8   4      OPC=movddup_xmm_xmm        
  vunpckhpd %ymm2, %ymm7, %ymm1  #  4     0xc   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
