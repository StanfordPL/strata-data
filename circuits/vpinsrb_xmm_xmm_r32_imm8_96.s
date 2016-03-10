  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                 
.target:                             #        0    0      OPC=<label>            
  vorps %xmm2, %xmm2, %xmm1          #  1     0    4      OPC=vorps_xmm_xmm_xmm  
  movl %ebx, %r9d                    #  2     0x4  3      OPC=movl_r32_r32       
  callq .move_r9b_to_byte_0_of_ymm1  #  3     0x7  5      OPC=callq_label        
  retq                               #  4     0xc  1      OPC=retq               
                                                                                 
.size target, .-target
