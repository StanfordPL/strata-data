  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm8_xmm9         #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm8, %xmm9, %xmm1             #  2     0x5   5      OPC=vunpcklpd_xmm_xmm_xmm  
  xorl %edx, %edx                           #  3     0xa   2      OPC=xorl_r32_r32           
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xc   5      OPC=callq_label            
  movq %rdx, %rbx                           #  5     0x11  3      OPC=movq_r64_r64           
  retq                                      #  6     0x14  1      OPC=retq                   
                                                                                             
.size target, .-target
