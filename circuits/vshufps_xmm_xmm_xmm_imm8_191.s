  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vmovsldup %xmm3, %xmm5                        #  2     0x5   4      OPC=vmovsldup_xmm_xmm     
  unpckhps %xmm5, %xmm3                         #  3     0x9   3      OPC=unpckhps_xmm_xmm      
  vrcpss %xmm5, %xmm3, %xmm6                    #  4     0xc   4      OPC=vrcpss_xmm_xmm_xmm    
  vbroadcastss %xmm7, %xmm1                     #  5     0x10  5      OPC=vbroadcastss_xmm_xmm  
  unpckhpd %xmm6, %xmm1                         #  6     0x15  4      OPC=unpckhpd_xmm_xmm      
  retq                                          #  7     0x19  1      OPC=retq                  
                                                                                                
.size target, .-target
