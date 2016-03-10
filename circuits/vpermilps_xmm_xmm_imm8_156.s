  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vmovss %xmm2, %xmm9, %xmm12        #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm    
  vbroadcastss %xmm9, %ymm8          #  3     0x9   5      OPC=vbroadcastss_ymm_xmm  
  vdivss %xmm9, %xmm2, %xmm1         #  4     0xe   5      OPC=vdivss_xmm_xmm_xmm    
  punpckldq %xmm8, %xmm1             #  5     0x13  5      OPC=punpckldq_xmm_xmm     
  movsd %xmm12, %xmm1                #  6     0x18  5      OPC=movsd_xmm_xmm         
  retq                               #  7     0x1d  1      OPC=retq                  
                                                                                     
.size target, .-target
