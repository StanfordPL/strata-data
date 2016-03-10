  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vmovups %xmm3, %xmm1                          #  1     0     4      OPC=vmovups_xmm_xmm          
  vunpckhps %xmm1, %xmm1, %xmm0                 #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm    
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label              
  vminss %xmm5, %xmm2, %xmm14                   #  4     0xd   4      OPC=vminss_xmm_xmm_xmm       
  vmovshdup %ymm14, %ymm10                      #  5     0x11  5      OPC=vmovshdup_ymm_ymm        
  vpunpcklqdq %xmm0, %xmm10, %xmm1              #  6     0x16  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                          #  7     0x1a  1      OPC=retq                     
                                                                                                   
.size target, .-target
