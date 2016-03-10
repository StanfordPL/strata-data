  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovshdup %xmm1, %xmm1      #  1     0     4      OPC=vmovshdup_xmm_xmm   
  vmaxpd %xmm1, %xmm1, %xmm3  #  2     0x4   4      OPC=vmaxpd_xmm_xmm_xmm  
  vpor %xmm3, %xmm1, %xmm2    #  3     0x8   4      OPC=vpor_xmm_xmm_xmm    
  movd %xmm2, %ebx            #  4     0xc   4      OPC=movd_r32_xmm        
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
