  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vmovdqu %ymm3, %ymm1                #  1     0     4      OPC=vmovdqu_ymm_ymm    
  punpckldq %xmm3, %xmm2              #  2     0x4   4      OPC=punpckldq_xmm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  3     0x8   5      OPC=callq_label        
  movupd %xmm9, %xmm1                 #  4     0xd   5      OPC=movupd_xmm_xmm     
  retq                                #  5     0x12  1      OPC=retq               
                                                                                   
.size target, .-target
