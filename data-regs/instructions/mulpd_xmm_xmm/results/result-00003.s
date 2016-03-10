  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovdqu %xmm2, %xmm3        #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vmovdqu %xmm1, %xmm0        #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  vmulpd %ymm3, %ymm0, %ymm7  #  3     0x8   4      OPC=vmulpd_ymm_ymm_ymm  
  movdqa %xmm7, %xmm1         #  4     0xc   4      OPC=movdqa_xmm_xmm      
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
