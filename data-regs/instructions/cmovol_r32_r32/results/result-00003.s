  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setno %ah           #  1     0    3      OPC=setno_rh         
  orl %ebx, %ebx      #  2     0x3  2      OPC=orl_r32_r32      
  decb %ah            #  3     0x5  2      OPC=decb_rh          
  cmovnel %ecx, %ebx  #  4     0x7  3      OPC=cmovnel_r32_r32  
  retq                #  5     0xa  1      OPC=retq             
                                                                
.size target, .-target
