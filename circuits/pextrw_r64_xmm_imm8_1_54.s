  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm2     #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  2     0x4   5      OPC=callq_label            
  callq .move_128_064_xmm2_r8_r9    #  3     0x9   5      OPC=callq_label            
  xaddq %r10, %r11                  #  4     0xe   4      OPC=xaddq_r64_r64          
  popcntw %r11w, %di                #  5     0x12  6      OPC=popcntw_r16_r16        
  callq .read_pf_into_rbx           #  6     0x18  5      OPC=callq_label            
  adcw %r9w, %bx                    #  7     0x1d  4      OPC=adcw_r16_r16           
  retq                              #  8     0x21  1      OPC=retq                   
                                                                                     
.size target, .-target
