  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movsldup %xmm2, %xmm11            #  1     0     5      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm3, %xmm11, %xmm10  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovss %xmm11, %xmm3, %xmm6       #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm      
  vmovsd %xmm6, %xmm10, %xmm1       #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
