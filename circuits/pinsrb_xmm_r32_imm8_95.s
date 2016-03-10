  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vpmovzxdq %xmm1, %ymm15             #  1     0     5      OPC=vpmovzxdq_ymm_xmm   
  vdivps %xmm15, %xmm15, %xmm3        #  2     0x5   5      OPC=vdivps_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9      #  3     0xa   5      OPC=callq_label         
  xchgb %r9b, %bl                     #  4     0xf   3      OPC=xchgb_r8_r8         
  callq .move_r9b_to_byte_15_of_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                                #  6     0x17  1      OPC=retq                
                                                                                    
.size target, .-target
