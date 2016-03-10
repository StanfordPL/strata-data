  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9      #  1     0    5      OPC=callq_label    
  xchgl %ebx, %r9d                    #  2     0x5  3      OPC=xchgl_r32_r32  
  callq .move_r9b_to_byte_12_of_ymm1  #  3     0x8  5      OPC=callq_label    
  retq                                #  4     0xd  1      OPC=retq           
                                                                              
.size target, .-target
