  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  sets %dh            #  1     0    3      OPC=sets_rh          
  decb %dh            #  2     0x3  2      OPC=decb_rh          
  cmovnel %ecx, %ebx  #  3     0x5  3      OPC=cmovnel_r32_r32  
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
