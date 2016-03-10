  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9      #  1     0    5      OPC=callq_label    
  andb %bh, %bh                       #  2     0x5  2      OPC=andb_rh_rh     
  xchgl %r9d, %ebx                    #  3     0x7  3      OPC=xchgl_r32_r32  
  callq .move_r9b_to_byte_12_of_ymm1  #  4     0xa  5      OPC=callq_label    
  retq                                #  5     0xf  1      OPC=retq           
                                                                              
.size target, .-target
