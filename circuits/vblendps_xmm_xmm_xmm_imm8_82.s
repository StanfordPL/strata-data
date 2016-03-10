  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vmovsldup %xmm3, %xmm1                        #  1     0     4      OPC=vmovsldup_xmm_xmm        
  subss %xmm3, %xmm3                            #  2     0x4   4      OPC=subss_xmm_xmm            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label              
  vaddsubps %xmm4, %xmm3, %xmm0                 #  4     0xd   4      OPC=vaddsubps_xmm_xmm_xmm    
  movshdup %xmm3, %xmm5                         #  5     0x11  4      OPC=movshdup_xmm_xmm         
  vfmadd132ps %xmm3, %xmm0, %xmm1               #  6     0x15  5      OPC=vfmadd132ps_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1a  5      OPC=callq_label              
  retq                                          #  8     0x1f  1      OPC=retq                     
                                                                                                   
.size target, .-target
