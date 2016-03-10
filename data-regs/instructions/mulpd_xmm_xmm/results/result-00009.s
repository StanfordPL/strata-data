  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm7          #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmovups %xmm1, %xmm10         #  2     0x4   4      OPC=vmovups_xmm_xmm     
  vmulpd %ymm7, %ymm10, %ymm11  #  3     0x8   4      OPC=vmulpd_ymm_ymm_ymm  
  movdqa %xmm11, %xmm1          #  4     0xc   5      OPC=movdqa_xmm_xmm      
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
