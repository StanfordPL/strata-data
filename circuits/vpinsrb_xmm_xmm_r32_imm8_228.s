  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_016_008_bx_r8b_r9b     #  1     0     5      OPC=callq_label      
  vmovapd %xmm2, %xmm1               #  2     0x5   4      OPC=vmovapd_xmm_xmm  
  movzbl %r8b, %r9d                  #  3     0x9   4      OPC=movzbl_r32_r8    
  callq .move_r9b_to_byte_4_of_ymm1  #  4     0xd   5      OPC=callq_label      
  retq                               #  5     0x12  1      OPC=retq             
                                                                                
.size target, .-target
