  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmaxsd %xmm1, %xmm1, %xmm8                    #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm  
  xorl %ebx, %ebx                               #  2     0x4   2      OPC=xorl_r32_r32        
  pmovzxwd %xmm8, %xmm3                         #  3     0x6   6      OPC=pmovzxwd_xmm_xmm    
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  4     0xc   5      OPC=callq_label         
  xchgl %ebx, %r13d                             #  5     0x11  3      OPC=xchgl_r32_r32       
  retq                                          #  6     0x14  1      OPC=retq                
                                                                                              
.size target, .-target
