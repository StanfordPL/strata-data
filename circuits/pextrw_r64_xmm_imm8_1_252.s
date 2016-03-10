  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label        
  vrsqrtps %xmm1, %xmm11          #  2     0x5   4      OPC=vrsqrtps_xmm_xmm   
  punpckldq %xmm11, %xmm1         #  3     0x9   5      OPC=punpckldq_xmm_xmm  
  vmovmskpd %xmm1, %ebx           #  4     0xe   4      OPC=vmovmskpd_r32_xmm  
  movw %r9w, %bx                  #  5     0x12  4      OPC=movw_r16_r16       
  retq                            #  6     0x16  1      OPC=retq               
                                                                               
.size target, .-target
