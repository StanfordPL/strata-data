  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovapd %xmm3, %xmm12                           #  2     0x5   4      OPC=vmovapd_xmm_xmm     
  subss %xmm10, %xmm12                            #  3     0x9   5      OPC=subss_xmm_xmm       
  vmovss %xmm8, %xmm12, %xmm1                     #  4     0xe   5      OPC=vmovss_xmm_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
