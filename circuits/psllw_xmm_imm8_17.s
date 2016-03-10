  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vdivss %xmm1, %xmm1, %xmm3            #  1     0     4      OPC=vdivss_xmm_xmm_xmm   
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x4   5      OPC=callq_label          
  vxorps %xmm13, %xmm13, %xmm9          #  3     0x9   5      OPC=vxorps_xmm_xmm_xmm   
  vhsubpd %xmm10, %xmm9, %xmm10         #  4     0xe   5      OPC=vhsubpd_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  5     0x13  5      OPC=callq_label          
  retq                                  #  6     0x18  1      OPC=retq                 
                                                                                       
.size target, .-target
