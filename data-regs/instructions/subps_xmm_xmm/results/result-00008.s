  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vminps %xmm2, %xmm2, %xmm7       #  1     0     4      OPC=vminps_xmm_xmm_xmm       
  vpxor %xmm8, %xmm8, %xmm9        #  2     0x4   5      OPC=vpxor_xmm_xmm_xmm        
  vfmsub231ps %xmm9, %xmm1, %xmm7  #  3     0x9   5      OPC=vfmsub231ps_xmm_xmm_xmm  
  addps %xmm1, %xmm7               #  4     0xe   3      OPC=addps_xmm_xmm            
  movapd %xmm7, %xmm1              #  5     0x11  4      OPC=movapd_xmm_xmm           
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
