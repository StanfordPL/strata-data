  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  movss %xmm3, %xmm2                #  1     0     4      OPC=movss_xmm_xmm            
  vmovsldup %ymm2, %ymm1            #  2     0x4   4      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm3, %ymm1, %ymm5    #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vmovddup %ymm2, %ymm13            #  4     0xc   4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm5, %ymm13, %ymm1  #  5     0x10  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  6     0x14  1      OPC=retq                     
                                                                                       
.size target, .-target
