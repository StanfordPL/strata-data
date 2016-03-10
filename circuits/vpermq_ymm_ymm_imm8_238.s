  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label      
  movups %xmm2, %xmm2                 #  2     0x5   3      OPC=movups_xmm_xmm   
  vmovups %ymm2, %ymm1                #  3     0x8   4      OPC=vmovups_ymm_ymm  
  movupd %xmm9, %xmm1                 #  4     0xc   5      OPC=movupd_xmm_xmm   
  maxpd %xmm9, %xmm1                  #  5     0x11  5      OPC=maxpd_xmm_xmm    
  retq                                #  6     0x16  1      OPC=retq             
                                                                                 
.size target, .-target
