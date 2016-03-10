  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vmaxss %xmm2, %xmm2, %xmm1         #  1     0     4      OPC=vmaxss_xmm_xmm_xmm  
  xorb %bl, %bh                      #  2     0x4   2      OPC=xorb_rh_r8          
  callq .move_016_008_bx_r8b_r9b     #  3     0x6   5      OPC=callq_label         
  callq .move_r8b_to_byte_6_of_ymm1  #  4     0xb   5      OPC=callq_label         
  retq                               #  5     0x10  1      OPC=retq                
                                                                                   
.size target, .-target
