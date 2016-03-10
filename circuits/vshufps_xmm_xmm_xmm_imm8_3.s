  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  unpcklps %xmm4, %xmm7                         #  2     0x5   3      OPC=unpcklps_xmm_xmm      
  vbroadcastss %xmm3, %xmm0                     #  3     0x8   5      OPC=vbroadcastss_xmm_xmm  
  vmovsd %xmm7, %xmm0, %xmm10                   #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm    
  vmaxss %xmm7, %xmm10, %xmm1                   #  5     0x11  4      OPC=vmaxss_xmm_xmm_xmm    
  retq                                          #  6     0x15  1      OPC=retq                  
                                                                                                
.size target, .-target
