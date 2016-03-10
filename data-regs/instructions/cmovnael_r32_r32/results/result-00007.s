  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnae %ah          #  1     0    3      OPC=setnae_rh        
  movsbl %ah, %edx    #  2     0x3  3      OPC=movsbl_r32_rh    
  shlw $0x1, %dx      #  3     0x6  3      OPC=shlw_r16_one     
  cmovnzl %ecx, %ebx  #  4     0x9  3      OPC=cmovnzl_r32_r32  
  retq                #  5     0xc  1      OPC=retq             
                                                                
.size target, .-target
