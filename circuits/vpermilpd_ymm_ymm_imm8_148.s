  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovddup %ymm2, %ymm8           #  1     0     4      OPC=vmovddup_ymm_ymm       
  vunpckhpd %ymm8, %ymm2, %ymm13  #  2     0x4   5      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovddup %ymm8, %ymm9           #  3     0x9   5      OPC=vmovddup_ymm_ymm       
  vmovapd %ymm13, %ymm1           #  4     0xe   5      OPC=vmovapd_ymm_ymm        
  movapd %xmm9, %xmm1             #  5     0x13  5      OPC=movapd_xmm_xmm         
  retq                            #  6     0x18  1      OPC=retq                   
                                                                                   
.size target, .-target
