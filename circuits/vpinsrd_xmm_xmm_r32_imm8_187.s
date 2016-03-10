  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm15                #  1     0     4      OPC=vmovd_xmm_r32           
  vunpckhpd %xmm15, %xmm2, %xmm1    #  2     0x4   5      OPC=vunpckhpd_xmm_xmm_xmm   
  vpunpckldq %ymm15, %ymm1, %ymm12  #  3     0x9   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vmovlhps %xmm12, %xmm2, %xmm1     #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm    
  retq                              #  5     0x13  1      OPC=retq                    
                                                                                      
.size target, .-target
