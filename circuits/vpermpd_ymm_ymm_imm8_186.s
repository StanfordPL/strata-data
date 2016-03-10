  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vmovddup %ymm2, %ymm0               #  2     0x5   4      OPC=vmovddup_ymm_ymm       
  movlhps %xmm9, %xmm9                #  3     0x9   4      OPC=movlhps_xmm_xmm        
  vunpckhpd %ymm0, %ymm2, %ymm1       #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movddup %xmm9, %xmm1                #  5     0x11  5      OPC=movddup_xmm_xmm        
  retq                                #  6     0x16  1      OPC=retq                   
                                                                                       
.size target, .-target
