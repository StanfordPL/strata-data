  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm8, %xmm4                          #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  movmskpd %xmm4, %ecx                            #  3     0xa   4      OPC=movmskpd_r32_xmm   
  movd %xmm4, %r8d                                #  4     0xe   5      OPC=movd_r32_xmm       
  movsbl %ch, %ebx                                #  5     0x13  3      OPC=movsbl_r32_rh      
  addw %r8w, %bx                                  #  6     0x16  4      OPC=addw_r16_r16       
  retq                                            #  7     0x1a  1      OPC=retq               
                                                                                               
.size target, .-target
