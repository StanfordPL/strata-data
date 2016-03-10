  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  xorw %bp, %bp                                 #  2     0x5   3      OPC=xorw_r16_r16       
  callq .read_sf_into_rbx                       #  3     0x8   5      OPC=callq_label        
  vpmovzxwq %xmm7, %xmm2                        #  4     0xd   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                #  5     0x12  5      OPC=callq_label        
  cmovnlw %r9w, %bx                             #  6     0x17  5      OPC=cmovnlw_r16_r16    
  retq                                          #  7     0x1c  1      OPC=retq               
                                                                                             
.size target, .-target
