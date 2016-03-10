  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label    
  blsrl %r13d, %r8d                 #  2     0x5   5      OPC=blsrl_r32_r32  
  callq .read_sf_into_rbx           #  3     0xa   5      OPC=callq_label    
  xaddb %bl, %r12b                  #  4     0xf   4      OPC=xaddb_r8_r8    
  retq                              #  5     0x13  1      OPC=retq           
                                                                             
.size target, .-target
