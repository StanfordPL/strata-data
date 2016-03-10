  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  xorl %ebx, %ebx                     #  1     0     2      OPC=xorl_r32_r32           
  vandnps %xmm1, %xmm1, %xmm14        #  2     0x2   4      OPC=vandnps_xmm_xmm_xmm    
  callq .move_byte_10_of_ymm1_to_r8b  #  3     0x6   5      OPC=callq_label            
  vunpcklps %xmm14, %xmm1, %xmm12     #  4     0xb   5      OPC=vunpcklps_xmm_xmm_xmm  
  movss %xmm12, %xmm1                 #  5     0x10  5      OPC=movss_xmm_xmm          
  callq .move_byte_11_of_ymm1_to_r9b  #  6     0x15  5      OPC=callq_label            
  callq .move_008_016_r8b_r9b_bx      #  7     0x1a  5      OPC=callq_label            
  retq                                #  8     0x1f  1      OPC=retq                   
                                                                                       
.size target, .-target
