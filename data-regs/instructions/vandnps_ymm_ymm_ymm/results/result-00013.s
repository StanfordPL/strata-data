  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vpxor %xmm3, %xmm3, %xmm0      #  1     0     4      OPC=vpxor_xmm_xmm_xmm    
  vrsqrtps %ymm0, %ymm4          #  2     0x4   4      OPC=vrsqrtps_ymm_ymm     
  vmovapd %ymm2, %ymm12          #  3     0x8   4      OPC=vmovapd_ymm_ymm      
  vminps %ymm3, %ymm4, %ymm15    #  4     0xc   4      OPC=vminps_ymm_ymm_ymm   
  vmovdqu %ymm15, %ymm13         #  5     0x10  5      OPC=vmovdqu_ymm_ymm      
  vandnpd %ymm13, %ymm12, %ymm1  #  6     0x15  5      OPC=vandnpd_ymm_ymm_ymm  
  retq                           #  7     0x1a  1      OPC=retq                 
                                                                                
.size target, .-target
