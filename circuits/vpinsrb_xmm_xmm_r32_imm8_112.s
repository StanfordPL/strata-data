  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  salb $0x1, %bh                     #  1     0     2      OPC=salb_rh_one      
  cmovnpw %bx, %bx                   #  2     0x2   4      OPC=cmovnpw_r16_r16  
  vmovaps %xmm2, %xmm1               #  3     0x6   4      OPC=vmovaps_xmm_xmm  
  callq .move_032_016_ebx_r8w_r9w    #  4     0xa   5      OPC=callq_label      
  callq .move_r8b_to_byte_0_of_ymm1  #  5     0xf   5      OPC=callq_label      
  retq                               #  6     0x14  1      OPC=retq             
                                                                                
.size target, .-target
