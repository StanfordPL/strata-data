  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movsldup %xmm3, %xmm10            #  1     0     5      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm2, %xmm10, %xmm11  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhpd %xmm11, %xmm2, %xmm8    #  3     0x9   5      OPC=vunpckhpd_xmm_xmm_xmm   
  vmovsd %xmm2, %xmm8, %xmm1        #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
