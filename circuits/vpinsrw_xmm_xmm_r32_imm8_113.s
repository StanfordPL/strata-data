  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_016_008_bx_r8b_r9b     #  1     0     5      OPC=callq_label         
  vmaxsd %xmm2, %xmm2, %xmm1         #  2     0x5   4      OPC=vmaxsd_xmm_xmm_xmm  
  callq .move_r9b_to_byte_3_of_ymm1  #  3     0x9   5      OPC=callq_label         
  movswl %bx, %r9d                   #  4     0xe   4      OPC=movswl_r32_r16      
  callq .move_r9b_to_byte_2_of_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                               #  6     0x17  1      OPC=retq                
                                                                                   
.size target, .-target
