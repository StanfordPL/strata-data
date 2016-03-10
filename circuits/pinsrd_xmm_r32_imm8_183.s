  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movd %ebx, %xmm5                  #  1     0     4      OPC=movd_xmm_r32            
  vbroadcastsd %xmm5, %ymm15        #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm    
  vmovdqu %xmm1, %xmm8              #  3     0x9   4      OPC=vmovdqu_xmm_xmm         
  vpunpckhdq %ymm15, %ymm8, %ymm12  #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  movlhps %xmm12, %xmm1             #  5     0x12  4      OPC=movlhps_xmm_xmm         
  retq                              #  6     0x16  1      OPC=retq                    
                                                                                      
.size target, .-target
