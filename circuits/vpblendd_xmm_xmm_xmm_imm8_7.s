  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %xmm3, %xmm6           #  1     0     4      OPC=vmovsldup_xmm_xmm        
  vpunpcklqdq %xmm3, %xmm3, %xmm1  #  2     0x4   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  unpckhps %xmm2, %xmm6            #  3     0x8   3      OPC=unpckhps_xmm_xmm         
  movhlps %xmm3, %xmm6             #  4     0xb   3      OPC=movhlps_xmm_xmm          
  vunpckhpd %xmm6, %xmm1, %xmm1    #  5     0xe   4      OPC=vunpckhpd_xmm_xmm_xmm    
  retq                             #  6     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
