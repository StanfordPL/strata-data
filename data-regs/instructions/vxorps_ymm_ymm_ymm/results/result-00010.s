  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  vandnps %ymm3, %ymm2, %ymm5        #  1     0     4      OPC=vandnps_ymm_ymm_ymm  
  vandnps %ymm2, %ymm3, %ymm2        #  2     0x4   4      OPC=vandnps_ymm_ymm_ymm  
  vpor %ymm2, %ymm5, %ymm13          #  3     0x8   4      OPC=vpor_ymm_ymm_ymm     
  callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xc   5      OPC=callq_label          
  movaps %xmm8, %xmm5                #  5     0x11  4      OPC=movaps_xmm_xmm       
  vorps %ymm13, %ymm5, %ymm1         #  6     0x15  5      OPC=vorps_ymm_ymm_ymm    
  retq                               #  7     0x1a  1      OPC=retq                 
                                                                                    
.size target, .-target
