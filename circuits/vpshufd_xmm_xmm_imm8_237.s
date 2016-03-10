  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vmovshdup %xmm2, %xmm3                        #  1     0     4      OPC=vmovshdup_xmm_xmm        
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  vmaxss %xmm2, %xmm4, %xmm12                   #  3     0x9   4      OPC=vmaxss_xmm_xmm_xmm       
  vunpcklps %xmm6, %xmm4, %xmm10                #  4     0xd   4      OPC=vunpcklps_xmm_xmm_xmm    
  vcvtsd2ss %xmm3, %xmm2, %xmm1                 #  5     0x11  4      OPC=vcvtsd2ss_xmm_xmm_xmm    
  vfmsub132sd %xmm12, %xmm7, %xmm1              #  6     0x15  5      OPC=vfmsub132sd_xmm_xmm_xmm  
  movsd %xmm10, %xmm1                           #  7     0x1a  5      OPC=movsd_xmm_xmm            
  retq                                          #  8     0x1f  1      OPC=retq                     
                                                                                                   
.size target, .-target
