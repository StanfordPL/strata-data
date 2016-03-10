  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  pmovsxwq %xmm1, %xmm3      #  1     0     5      OPC=pmovsxwq_xmm_xmm      
  vmovd %ebx, %xmm2          #  2     0x5   4      OPC=vmovd_xmm_r32         
  vpbroadcastd %xmm2, %xmm7  #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm  
  unpckhps %xmm1, %xmm7      #  4     0xe   3      OPC=unpckhps_xmm_xmm      
  punpckhqdq %xmm3, %xmm7    #  5     0x11  4      OPC=punpckhqdq_xmm_xmm    
  movlhps %xmm7, %xmm1       #  6     0x15  3      OPC=movlhps_xmm_xmm       
  retq                       #  7     0x18  1      OPC=retq                  
                                                                             
.size target, .-target
