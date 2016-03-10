  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  xorw %r12w, %r12w   #  1     0    4      OPC=xorw_r16_r16    
  notw %r12w          #  2     0x4  4      OPC=notw_r16        
  movswq %r12w, %rsi  #  3     0x8  4      OPC=movswq_r64_r16  
  xorl %esi, %ebx     #  4     0xc  2      OPC=xorl_r32_r32    
  retq                #  5     0xe  1      OPC=retq            
                                                               
.size target, .-target
