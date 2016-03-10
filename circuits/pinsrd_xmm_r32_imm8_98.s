  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm8                #  1     0     4      OPC=vmovd_xmm_r32            
  vbroadcastss %xmm8, %xmm3        #  2     0x4   5      OPC=vbroadcastss_xmm_xmm     
  vunpckhps %xmm1, %xmm3, %xmm9    #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %ymm9, %ymm9, %ymm7  #  4     0xd   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movlhps %xmm7, %xmm1             #  5     0x12  3      OPC=movlhps_xmm_xmm          
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
