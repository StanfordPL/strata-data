  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  cmovpol %ecx, %ebx                #  1     0    3      OPC=cmovpol_r32_r32  
  orl %ebx, %ebx                    #  2     0x3  2      OPC=orl_r32_r32      
  callq .move_byte_7_of_rbx_to_r9b  #  3     0x5  5      OPC=callq_label      
  callq .move_r9b_to_byte_4_of_rbx  #  4     0xa  5      OPC=callq_label      
  retq                              #  5     0xf  1      OPC=retq             
                                                                              
.size target, .-target
