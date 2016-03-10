  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1  #  2     0x5   5      OPC=callq_label            
  movsldup %xmm2, %xmm5           #  3     0xa   4      OPC=movsldup_xmm_xmm       
  vunpcklps %xmm5, %xmm2, %xmm12  #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm  
  unpckhps %xmm5, %xmm1           #  5     0x12  3      OPC=unpckhps_xmm_xmm       
  vsubsd %xmm12, %xmm12, %xmm5    #  6     0x15  5      OPC=vsubsd_xmm_xmm_xmm     
  punpckhqdq %xmm5, %xmm1         #  7     0x1a  4      OPC=punpckhqdq_xmm_xmm     
  retq                            #  8     0x1e  1      OPC=retq                   
                                                                                   
.size target, .-target
