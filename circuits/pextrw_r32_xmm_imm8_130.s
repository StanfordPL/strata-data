  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  xorl %ebx, %ebx                               #  1     0     2      OPC=xorl_r32_r32    
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x2   5      OPC=callq_label     
  orl %ebx, %ebx                                #  3     0x7   2      OPC=orl_r32_r32     
  callq .set_pf                                 #  4     0x9   5      OPC=callq_label     
  vmovd %xmm5, %r9d                             #  5     0xe   5      OPC=vmovd_r32_xmm   
  cmovpw %r9w, %bx                              #  6     0x13  5      OPC=cmovpw_r16_r16  
  retq                                          #  7     0x18  1      OPC=retq            
                                                                                          
.size target, .-target
