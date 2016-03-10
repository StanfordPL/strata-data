  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_032_016_ebx_r8w_r9w    #  1     0     5      OPC=callq_label         
  shll $0x1, %ebx                    #  2     0x5   2      OPC=shll_r32_one        
  vmovsd %xmm2, %xmm2, %xmm1         #  3     0x7   4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_r8b_to_byte_2_of_rbx   #  4     0xb   5      OPC=callq_label         
  callq .move_032_016_ebx_r8w_r9w    #  5     0x10  5      OPC=callq_label         
  callq .move_r9b_to_byte_8_of_ymm1  #  6     0x15  5      OPC=callq_label         
  retq                               #  7     0x1a  1      OPC=retq                
                                                                                   
.size target, .-target
