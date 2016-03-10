  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vcvtss2sd %xmm2, %xmm2, %xmm0        #  2     0x5   4      OPC=vcvtss2sd_xmm_xmm_xmm  
  andpd %xmm2, %xmm0                   #  3     0x9   4      OPC=andpd_xmm_xmm          
  movd %ebx, %xmm6                     #  4     0xd   4      OPC=movd_xmm_r32           
  vunpcklps %xmm6, %xmm12, %xmm12      #  5     0x11  4      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm12, %xmm0                  #  6     0x15  5      OPC=movsd_xmm_xmm          
  vpor %xmm0, %xmm0, %xmm1             #  7     0x1a  4      OPC=vpor_xmm_xmm_xmm       
  retq                                 #  8     0x1e  1      OPC=retq                   
                                                                                        
.size target, .-target
