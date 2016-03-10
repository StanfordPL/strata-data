  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vzeroall                        #  1     0     3      OPC=vzeroall               
  callq .move_128_064_xmm2_r8_r9  #  2     0x3   5      OPC=callq_label            
  decq %r9                        #  3     0x8   3      OPC=decq_r64               
  cmovzw %r8w, %r9w               #  4     0xb   5      OPC=cmovzw_r16_r16         
  callq .move_064_128_r8_r9_xmm2  #  5     0x10  5      OPC=callq_label            
  vunpckhps %xmm2, %xmm2, %xmm1   #  6     0x15  4      OPC=vunpckhps_xmm_xmm_xmm  
  retq                            #  7     0x19  1      OPC=retq                   
                                                                                   
.size target, .-target
