  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  xorl %r13d, %r13d        #  1     0     3      OPC=xorl_r32_r32     
  vmovq %xmm1, %rcx        #  2     0x3   5      OPC=vmovq_r64_xmm    
  callq .read_sf_into_rbx  #  3     0x8   5      OPC=callq_label      
  cmovpew %cx, %bx         #  4     0xd   4      OPC=cmovpew_r16_r16  
  retq                     #  5     0x11  1      OPC=retq             
                                                                      
.size target, .-target
