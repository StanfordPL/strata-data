  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  movsd %xmm1, %xmm1                  #  1     0     4      OPC=movsd_xmm_xmm     
  callq .move_128_064_xmm1_r8_r9      #  2     0x4   5      OPC=callq_label       
  movzbq %r8b, %rbx                   #  3     0x9   4      OPC=movzbq_r64_r8     
  unpckhps %xmm1, %xmm1               #  4     0xd   3      OPC=unpckhps_xmm_xmm  
  callq .move_byte_10_of_ymm1_to_r8b  #  5     0x10  5      OPC=callq_label       
  bswap %r9                           #  6     0x15  3      OPC=bswap_r64         
  callq .move_008_016_r8b_r9b_bx      #  7     0x18  5      OPC=callq_label       
  retq                                #  8     0x1d  1      OPC=retq              
                                                                                  
.size target, .-target
