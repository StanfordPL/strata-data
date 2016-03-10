  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .move_byte_15_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label  
  xchgb %r8b, %r8b                    #  2     0x5   3      OPC=xchgb_r8_r8  
  callq .move_r8b_to_byte_15_of_ymm1  #  3     0x8   5      OPC=callq_label  
  por %xmm2, %xmm1                    #  4     0xd   4      OPC=por_xmm_xmm  
  retq                                #  5     0x11  1      OPC=retq         
                                                                             
.size target, .-target
