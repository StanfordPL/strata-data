  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  xorq %rbx, %rbx                     #  1     0     3      OPC=xorq_r64_r64           
  callq .move_128_064_xmm1_r8_r9      #  2     0x3   5      OPC=callq_label            
  bswap %r9                           #  3     0x8   3      OPC=bswap_r64              
  vunpckhps %xmm1, %xmm1, %xmm1       #  4     0xb   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_byte_14_of_ymm1_to_r8b  #  5     0xf   5      OPC=callq_label            
  callq .move_008_016_r8b_r9b_bx      #  6     0x14  5      OPC=callq_label            
  retq                                #  7     0x19  1      OPC=retq                   
                                                                                       
.size target, .-target
