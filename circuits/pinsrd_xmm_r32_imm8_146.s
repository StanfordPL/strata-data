  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmovsldup %xmm7, %xmm4                        #  2     0x5   4      OPC=vmovsldup_xmm_xmm   
  movd %ebx, %xmm15                             #  3     0x9   5      OPC=movd_xmm_r32        
  vmovss %xmm15, %xmm4, %xmm12                  #  4     0xe   5      OPC=vmovss_xmm_xmm_xmm  
  movlhps %xmm12, %xmm1                         #  5     0x13  4      OPC=movlhps_xmm_xmm     
  retq                                          #  6     0x17  1      OPC=retq                
                                                                                              
.size target, .-target
