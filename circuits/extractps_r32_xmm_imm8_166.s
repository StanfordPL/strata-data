  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovhlps %xmm1, %xmm1, %xmm9    #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm    
  vpmovzxbq %xmm9, %ymm0          #  2     0x4   5      OPC=vpmovzxbq_ymm_xmm       
  vpunpckldq %xmm0, %xmm9, %xmm0  #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movd %xmm0, %ebx                #  4     0xd   4      OPC=movd_r32_xmm            
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target
