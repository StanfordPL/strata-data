  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  orps %xmm9, %xmm9                               #  2     0x5   4      OPC=orps_xmm_xmm           
  vmovss %xmm11, %xmm10, %xmm1                    #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm     
  vunpckhps %xmm2, %xmm11, %xmm7                  #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  punpckldq %xmm7, %xmm9                          #  5     0x12  5      OPC=punpckldq_xmm_xmm      
  punpcklqdq %xmm8, %xmm1                         #  6     0x17  5      OPC=punpcklqdq_xmm_xmm     
  vphaddd %xmm1, %xmm9, %xmm1                     #  7     0x1c  5      OPC=vphaddd_xmm_xmm_xmm    
  retq                                            #  8     0x21  1      OPC=retq                   
                                                                                                   
.size target, .-target
