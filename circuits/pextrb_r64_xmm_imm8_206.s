  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmaxss %xmm1, %xmm1, %xmm1          #  1     0     4      OPC=vmaxss_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9      #  2     0x4   5      OPC=callq_label         
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label         
  orl %r8d, %r9d                      #  4     0xe   3      OPC=orl_r32_r32         
  callq .read_of_into_rbx             #  5     0x11  5      OPC=callq_label         
  xaddb %r8b, %bl                     #  6     0x16  4      OPC=xaddb_r8_r8         
  retq                                #  7     0x1a  1      OPC=retq                
                                                                                    
.size target, .-target
