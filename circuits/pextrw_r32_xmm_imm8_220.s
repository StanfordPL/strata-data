  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm9      #  1     0     4      OPC=vpandn_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x4   5      OPC=callq_label         
  cvtsd2sil %xmm9, %ebx           #  3     0x9   5      OPC=cvtsd2sil_r32_xmm   
  addw %r9w, %bx                  #  4     0xe   4      OPC=addw_r16_r16        
  retq                            #  5     0x12  1      OPC=retq                
                                                                                
.size target, .-target
