  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovapd %xmm2, %xmm0        #  1     0     4      OPC=vmovapd_xmm_xmm     
  vmovupd %xmm1, %xmm3        #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  vmulpd %ymm0, %ymm3, %ymm2  #  3     0x8   4      OPC=vmulpd_ymm_ymm_ymm  
  vmovdqu %xmm2, %xmm6        #  4     0xc   4      OPC=vmovdqu_xmm_xmm     
  movdqa %xmm6, %xmm1         #  5     0x10  4      OPC=movdqa_xmm_xmm      
  retq                        #  6     0x14  1      OPC=retq                
                                                                            
.size target, .-target
