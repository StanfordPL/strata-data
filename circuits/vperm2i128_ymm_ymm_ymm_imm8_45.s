  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  movaps %xmm3, %xmm9                 #  1     0     4      OPC=movaps_xmm_xmm            
  vfnmsub231ss %xmm2, %xmm2, %xmm3    #  2     0x4   5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  vpunpckhqdq %xmm3, %xmm3, %xmm8     #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm   
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xd   5      OPC=callq_label               
  vmaxps %xmm1, %xmm8, %xmm6          #  5     0x12  4      OPC=vmaxps_xmm_xmm_xmm        
  vpxor %ymm1, %ymm6, %ymm1           #  6     0x16  4      OPC=vpxor_ymm_ymm_ymm         
  retq                                #  7     0x1a  1      OPC=retq                      
                                                                                          
.size target, .-target
