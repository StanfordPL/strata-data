  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm3            #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label        
  callq .move_128_064_xmm1_r10_r11  #  3     0xa   5      OPC=callq_label        
  xaddw %r10w, %r10w                #  4     0xf   5      OPC=xaddw_r16_r16      
  callq .read_zf_into_rbx           #  5     0x14  5      OPC=callq_label        
  xchgw %bx, %r9w                   #  6     0x19  4      OPC=xchgw_r16_r16      
  retq                              #  7     0x1d  1      OPC=retq               
                                                                                 
.size target, .-target
