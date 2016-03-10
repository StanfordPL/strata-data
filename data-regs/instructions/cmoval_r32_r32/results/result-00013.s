  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  setnb %r8b                        #  1     0    4      OPC=setnb_r8         
  cmovbl %ebx, %ecx                 #  2     0x4  3      OPC=cmovbl_r32_r32   
  callq .move_r8b_to_byte_6_of_rbx  #  3     0x7  5      OPC=callq_label      
  cmovnel %ecx, %ebx                #  4     0xc  3      OPC=cmovnel_r32_r32  
  retq                              #  5     0xf  1      OPC=retq             
                                                                              
.size target, .-target
