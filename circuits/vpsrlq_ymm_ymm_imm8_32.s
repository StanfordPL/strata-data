  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  vxorps %xmm8, %xmm8, %xmm12         #  1     0     5      OPC=vxorps_xmm_xmm_xmm        
  vunpckhpd %ymm12, %ymm2, %ymm15     #  2     0x5   5      OPC=vunpckhpd_ymm_ymm_ymm     
  vunpcklps %ymm15, %ymm2, %ymm0      #  3     0xa   5      OPC=vunpcklps_ymm_ymm_ymm     
  vxorpd %ymm12, %ymm0, %ymm14        #  4     0xf   5      OPC=vxorpd_ymm_ymm_ymm        
  vmovups %xmm12, %xmm13              #  5     0x14  5      OPC=vmovups_xmm_xmm           
  cvttpd2dq %xmm12, %xmm1             #  6     0x19  5      OPC=cvttpd2dq_xmm_xmm         
  vfnmsub231sd %xmm1, %xmm14, %xmm13  #  7     0x1e  5      OPC=vfnmsub231sd_xmm_xmm_xmm  
  vunpckhps %ymm13, %ymm0, %ymm1      #  8     0x23  5      OPC=vunpckhps_ymm_ymm_ymm     
  retq                                #  9     0x28  1      OPC=retq                      
                                                                                          
.size target, .-target
