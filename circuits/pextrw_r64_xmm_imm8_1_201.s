  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  xorl %ebx, %ebx                   #  1     0     2      OPC=xorl_r32_r32      
  pmovzxwq %xmm1, %xmm3             #  2     0x2   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  3     0x7   5      OPC=callq_label       
  callq .set_szp_for_bl             #  4     0xc   5      OPC=callq_label       
  cmovnll %r13d, %ebx               #  5     0x11  4      OPC=cmovnll_r32_r32   
  retq                              #  6     0x15  1      OPC=retq              
                                                                                
.size target, .-target
