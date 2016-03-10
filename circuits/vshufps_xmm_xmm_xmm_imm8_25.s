  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm3, %xmm10, %xmm5                  #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  vdivpd %xmm2, %xmm2, %xmm12                     #  3     0x9   4      OPC=vdivpd_xmm_xmm_xmm     
  sqrtss %xmm12, %xmm3                            #  4     0xd   5      OPC=sqrtss_xmm_xmm         
  unpcklps %xmm5, %xmm3                           #  5     0x12  3      OPC=unpcklps_xmm_xmm       
  vmovss %xmm9, %xmm3, %xmm1                      #  6     0x15  5      OPC=vmovss_xmm_xmm_xmm     
  retq                                            #  7     0x1a  1      OPC=retq                   
                                                                                                   
.size target, .-target
