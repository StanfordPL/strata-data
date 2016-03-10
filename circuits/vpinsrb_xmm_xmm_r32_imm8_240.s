  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  movb %bl, %bh                      #  1     0     2      OPC=movb_rh_r8          
  vmovss %xmm2, %xmm2, %xmm1         #  2     0x2   4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_016_008_bx_r8b_r9b     #  3     0x6   5      OPC=callq_label         
  callq .move_r9b_to_byte_0_of_ymm1  #  4     0xb   5      OPC=callq_label         
  retq                               #  5     0x10  1      OPC=retq                
                                                                                   
.size target, .-target
