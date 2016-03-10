  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm10  #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpmovzxwd %xmm10, %xmm12          #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm        
  movshdup %xmm12, %xmm1            #  3     0x9   5      OPC=movshdup_xmm_xmm         
  callq .move_128_064_xmm1_r8_r9    #  4     0xe   5      OPC=callq_label              
  sarw $0x1, %r8w                   #  5     0x13  4      OPC=sarw_r16_one             
  callq .read_cf_into_rbx           #  6     0x17  5      OPC=callq_label              
  movw %r9w, %bx                    #  7     0x1c  4      OPC=movw_r16_r16             
  retq                              #  8     0x20  1      OPC=retq                     
                                                                                       
.size target, .-target
