  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmaxps %ymm2, %ymm2, %ymm1          #  1     0     4      OPC=vmaxps_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label         
  punpckhqdq %xmm9, %xmm1             #  3     0x9   5      OPC=punpckhqdq_xmm_xmm  
  minpd %xmm9, %xmm1                  #  4     0xe   5      OPC=minpd_xmm_xmm       
  movhlps %xmm9, %xmm1                #  5     0x13  4      OPC=movhlps_xmm_xmm     
  retq                                #  6     0x17  1      OPC=retq                
                                                                                    
.size target, .-target
