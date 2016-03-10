  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  movaps %xmm3, %xmm9                 #  1     0     4      OPC=movaps_xmm_xmm         
  vaddsubps %xmm3, %xmm9, %xmm8       #  2     0x4   4      OPC=vaddsubps_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0x8   5      OPC=callq_label            
  movdqu %xmm2, %xmm1                 #  4     0xd   4      OPC=movdqu_xmm_xmm         
  retq                                #  5     0x11  1      OPC=retq                   
                                                                                       
.size target, .-target
