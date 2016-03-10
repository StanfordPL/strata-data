  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmulps %xmm2, %xmm1, %xmm2          #  1     0     4      OPC=vmulps_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label         
  pmovzxwq %xmm9, %xmm15              #  3     0x9   6      OPC=pmovzxwq_xmm_xmm    
  vmovapd %xmm15, %xmm3               #  4     0xf   5      OPC=vmovapd_xmm_xmm     
  addps %xmm3, %xmm2                  #  5     0x14  3      OPC=addps_xmm_xmm       
  punpckldq %xmm2, %xmm15             #  6     0x17  5      OPC=punpckldq_xmm_xmm   
  movq %xmm15, %xmm1                  #  7     0x1c  5      OPC=movq_xmm_xmm        
  retq                                #  8     0x21  1      OPC=retq                
                                                                                    
.size target, .-target
