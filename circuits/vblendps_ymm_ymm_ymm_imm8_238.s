  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovdqu %ymm3, %ymm15             #  1     0     4      OPC=vmovdqu_ymm_ymm          
  vmovddup %ymm2, %ymm10            #  2     0x4   4      OPC=vmovddup_ymm_ymm         
  vpxor %xmm2, %xmm10, %xmm7        #  3     0x8   4      OPC=vpxor_xmm_xmm_xmm        
  vpunpckldq %ymm10, %ymm3, %ymm11  #  4     0xc   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhps %ymm11, %ymm10, %ymm6   #  5     0x11  5      OPC=vunpckhps_ymm_ymm_ymm    
  vunpckhpd %ymm7, %ymm15, %ymm3    #  6     0x16  4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm3, %ymm6, %ymm1   #  7     0x1a  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  8     0x1e  1      OPC=retq                     
                                                                                       
.size target, .-target
