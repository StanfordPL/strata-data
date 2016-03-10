  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movsbl %bh, %esi    #  1     0    3      OPC=movsbl_r32_rh    
  xorl %r15d, %r15d   #  2     0x3  3      OPC=xorl_r32_r32     
  cmovngl %esi, %esi  #  3     0x6  3      OPC=cmovngl_r32_r32  
  cmpxchgb %sil, %cl  #  4     0x9  4      OPC=cmpxchgb_r8_r8   
  retq                #  5     0xd  1      OPC=retq             
                                                                
.size target, .-target
