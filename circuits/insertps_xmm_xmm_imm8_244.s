  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  unpckhps %xmm2, %xmm9                           #  2     0x5   4      OPC=unpckhps_xmm_xmm       
  vunpckhpd %xmm11, %xmm9, %xmm8                  #  3     0x9   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movlhps %xmm8, %xmm1                            #  4     0xe   4      OPC=movlhps_xmm_xmm        
  retq                                            #  5     0x12  1      OPC=retq                   
                                                                                                   
.size target, .-target
