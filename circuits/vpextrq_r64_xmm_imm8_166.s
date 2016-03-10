  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  vmovq %xmm1, %r11   #  1     0    5      OPC=vmovq_r64_xmm    
  xorl %ebx, %ebx     #  2     0x5  2      OPC=xorl_r32_r32     
  cmovpeq %r11, %rbx  #  3     0x7  4      OPC=cmovpeq_r64_r64  
  retq                #  4     0xb  1      OPC=retq             
                                                                
.size target, .-target
