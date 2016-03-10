  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vmovd %ebx, %xmm9           #  1     0     4      OPC=vmovd_xmm_r32         
  vbroadcastsd %xmm9, %ymm13  #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm  
  movdqa %xmm1, %xmm3         #  3     0x9   4      OPC=movdqa_xmm_xmm        
  vaddss %xmm1, %xmm3, %xmm2  #  4     0xd   4      OPC=vaddss_xmm_xmm_xmm    
  punpckhdq %xmm13, %xmm2     #  5     0x11  5      OPC=punpckhdq_xmm_xmm     
  movlhps %xmm2, %xmm1        #  6     0x16  3      OPC=movlhps_xmm_xmm       
  retq                        #  7     0x19  1      OPC=retq                  
                                                                              
.size target, .-target
