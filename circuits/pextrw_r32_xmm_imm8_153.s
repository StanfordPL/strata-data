  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  xorw %bx, %bx                   #  1     0     3      OPC=xorw_r16_r16       
  vpmovzxwq %xmm1, %xmm3          #  2     0x3   5      OPC=vpmovzxwq_xmm_xmm  
  callq .read_sf_into_rbx         #  3     0x8   5      OPC=callq_label        
  callq .move_128_064_xmm3_r8_r9  #  4     0xd   5      OPC=callq_label        
  cmovpw %r9w, %bx                #  5     0x12  5      OPC=cmovpw_r16_r16     
  retq                            #  6     0x17  1      OPC=retq               
                                                                               
.size target, .-target
