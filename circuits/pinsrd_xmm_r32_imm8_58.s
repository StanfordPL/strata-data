  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm13              #  1     0     4      OPC=vmovd_xmm_r32           
  vbroadcastss %xmm13, %xmm8      #  2     0x4   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm1, %xmm8, %xmm7  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhpd %ymm7, %ymm7, %ymm13  #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm   
  movlhps %xmm13, %xmm1           #  5     0x11  4      OPC=movlhps_xmm_xmm         
  retq                            #  6     0x15  1      OPC=retq                    
                                                                                    
.size target, .-target
