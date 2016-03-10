  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .set_zf                      #  1     0     5      OPC=callq_label         
  vmaxss %xmm2, %xmm2, %xmm1         #  2     0x5   4      OPC=vmaxss_xmm_xmm_xmm  
  callq .move_byte_4_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label         
  cmovel %ebx, %r8d                  #  4     0xe   4      OPC=cmovel_r32_r32      
  callq .move_r8b_to_byte_7_of_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                               #  6     0x17  1      OPC=retq                
                                                                                   
.size target, .-target
