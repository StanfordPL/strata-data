  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode           
.target:                              #        0    0      OPC=<label>      
  bswap %ebx                          #  1     0    2      OPC=bswap_r32    
  callq .move_byte_3_of_rbx_to_r8b    #  2     0x2  5      OPC=callq_label  
  callq .move_r8b_to_byte_11_of_ymm1  #  3     0x7  5      OPC=callq_label  
  retq                                #  4     0xc  1      OPC=retq         
                                                                            
.size target, .-target
