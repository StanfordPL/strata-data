  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vpxor %ymm5, %ymm5, %ymm4         #  1     0     4      OPC=vpxor_ymm_ymm_ymm         
  vfnmsub132ps %xmm4, %xmm4, %xmm4  #  2     0x4   5      OPC=vfnmsub132ps_xmm_xmm_xmm  
  maxss %xmm4, %xmm4                #  3     0x9   4      OPC=maxss_xmm_xmm             
  vsubps %xmm3, %xmm4, %xmm0        #  4     0xd   4      OPC=vsubps_xmm_xmm_xmm        
  vfmsub231ss %xmm0, %xmm2, %xmm1   #  5     0x11  5      OPC=vfmsub231ss_xmm_xmm_xmm   
  retq                              #  6     0x16  1      OPC=retq                      
                                                                                        
.size target, .-target
