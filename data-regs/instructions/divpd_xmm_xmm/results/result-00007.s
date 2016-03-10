  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpor %xmm1, %xmm1, %xmm5    #  1     0     4      OPC=vpor_xmm_xmm_xmm    
  vmovapd %xmm2, %xmm6        #  2     0x4   4      OPC=vmovapd_xmm_xmm     
  vdivpd %ymm6, %ymm5, %ymm3  #  3     0x8   4      OPC=vdivpd_ymm_ymm_ymm  
  movdqu %xmm3, %xmm1         #  4     0xc   4      OPC=movdqu_xmm_xmm      
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
