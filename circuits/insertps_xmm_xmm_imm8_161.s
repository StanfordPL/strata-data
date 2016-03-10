  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP   Bytes  Opcode                 
.target:                     #        0     0      OPC=<label>            
  vmovapd %xmm1, %xmm10      #  1     0     4      OPC=vmovapd_xmm_xmm    
  vpmovzxdq %xmm10, %xmm4    #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm  
  vpxor %xmm4, %xmm1, %xmm5  #  3     0x9   4      OPC=vpxor_xmm_xmm_xmm  
  unpckhps %xmm4, %xmm1      #  4     0xd   3      OPC=unpckhps_xmm_xmm   
  unpckhps %xmm1, %xmm2      #  5     0x10  3      OPC=unpckhps_xmm_xmm   
  sqrtss %xmm5, %xmm1        #  6     0x13  4      OPC=sqrtss_xmm_xmm     
  movlhps %xmm2, %xmm1       #  7     0x17  3      OPC=movlhps_xmm_xmm    
  retq                       #  8     0x1a  1      OPC=retq               
                                                                          
.size target, .-target
