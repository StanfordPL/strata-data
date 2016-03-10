  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  vmovups %xmm2, %xmm1                #  1     0     4      OPC=vmovups_xmm_xmm  
  andpd %xmm1, %xmm3                  #  2     0x4   4      OPC=andpd_xmm_xmm    
  callq .move_byte_31_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label      
  vmovups %xmm3, %xmm1                #  4     0xd   4      OPC=vmovups_xmm_xmm  
  callq .move_r9b_to_byte_30_of_ymm1  #  5     0x11  5      OPC=callq_label      
  retq                                #  6     0x16  1      OPC=retq             
                                                                                 
.size target, .-target
