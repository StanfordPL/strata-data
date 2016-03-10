  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_016_008_bx_r8b_r9b     #  1     0     5      OPC=callq_label         
  movaps %xmm2, %xmm5                #  2     0x5   3      OPC=movaps_xmm_xmm      
  vmaxpd %xmm2, %xmm5, %xmm1         #  3     0x8   4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_r8b_to_byte_6_of_ymm1  #  4     0xc   5      OPC=callq_label         
  retq                               #  5     0x11  1      OPC=retq                
                                                                                   
.size target, .-target
