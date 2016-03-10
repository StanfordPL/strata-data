  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  callq .move_016_008_cx_r8b_r9b    #  1     0    5      OPC=callq_label      
  callq .move_r8b_to_byte_6_of_rbx  #  2     0x5  5      OPC=callq_label      
  cmovpol %ecx, %ebx                #  3     0xa  3      OPC=cmovpol_r32_r32  
  retq                              #  4     0xd  1      OPC=retq             
                                                                              
.size target, .-target
