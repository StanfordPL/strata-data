  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpaddd %xmm1, %xmm1, %xmm2  #  1     0     4      OPC=vpaddd_xmm_xmm_xmm  
  vpaddd %xmm2, %xmm2, %xmm4  #  2     0x4   4      OPC=vpaddd_xmm_xmm_xmm  
  vpaddd %ymm4, %ymm4, %ymm3  #  3     0x8   4      OPC=vpaddd_ymm_ymm_ymm  
  vpaddd %ymm3, %ymm3, %ymm2  #  4     0xc   4      OPC=vpaddd_ymm_ymm_ymm  
  vpaddd %xmm2, %xmm2, %xmm7  #  5     0x10  4      OPC=vpaddd_xmm_xmm_xmm  
  movdqa %xmm7, %xmm1         #  6     0x14  4      OPC=movdqa_xmm_xmm      
  retq                        #  7     0x18  1      OPC=retq                
                                                                            
.size target, .-target
